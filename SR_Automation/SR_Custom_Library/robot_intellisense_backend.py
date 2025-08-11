import pkgutil
import importlib
from robot.libdocpkg import LibraryDocumentation
from robot.running.arguments.argumentspec import ArgumentSpec # For type hinting
import sys
import os
import json

# Suppress potential stdout/stderr from robot.libdocpkg if it's not critical
# This can be useful when running as a subprocess for an IDE plugin.
# import io
# sys.stdout = io.StringIO()
# sys.stderr = io.StringIO()

class RobotIntellisenseBackend:
    """
    Provides backend logic for Robot Framework library and keyword introspection.
    Designed to be callable from an IDE extension or other tools.
    """

    def __init__(self):
        self._all_libraries_cache = None
        self._library_keywords_cache = {} # {lib_name: [kw_data, ...]}
        self._keyword_to_libraries_index = {} # {kw_name: [lib_name, ...]}

    def _discover_potential_libraries(self):
        """
        Discovers potential Robot Framework libraries by iterating through installed modules.
        Includes common built-in and external library names.
        """
        potential_libs = set()

        # Add common built-in libraries
        built_in_core_candidates = [
            "BuiltIn", "Collections", "DateTime", "Dialogs",
            "OperatingSystem", "Process", "Screenshot", "String",
            "Telnet", "XML", "Remote"
        ]
        potential_libs.update(built_in_core_candidates)

        # Iterate through installed modules using pkgutil
        try:
            for _, name, _ in pkgutil.iter_modules():
                # Heuristic to identify potential Robot Framework libraries
                if (name.endswith('Library') or name.endswith('Browser') or
                    "robotframework" in name.lower() or "selenium" in name.lower() or
                    name.lower().startswith('robot') or name.lower().startswith('selenium') or
                    "appium" in name.lower() or "requests" in name.lower() or "api" in name.lower() or
                    "http" in name.lower() or "database" in name.lower()):
                    potential_libs.add(name)
        except Exception as e:
            # Log this warning if running in a context where logs are visible
            # print(f"Warning: Error during pkgutil.iter_modules(): {e}", file=sys.stderr)
            pass # Suppress for silent backend operation

        return sorted(list(potential_libs))

    def get_all_robot_libraries(self):
        """
        Returns a list of all discoverable Robot Framework library names.
        Caches the result for subsequent calls.
        """
        if self._all_libraries_cache is None:
            self._all_libraries_cache = self._discover_potential_libraries()
        return self._all_libraries_cache

    def get_library_keywords(self, lib_name):
        """
        Loads and returns detailed information for all keywords in a given library.
        Caches the result.
        """
        if lib_name in self._library_keywords_cache:
            return self._library_keywords_cache[lib_name]

        keyword_data_list = []
        try:
            libdoc = LibraryDocumentation(lib_name)
            for kw in libdoc.keywords:
                args_spec = kw.args
                positional_args = args_spec.positional
                defaults = args_spec.defaults or {}
                required = [arg for arg in positional_args if arg not in defaults]
                var_positional_name = args_spec.var_positional
                var_named_name = args_spec.var_named

                kw_data = {
                    "name": kw.name,
                    "positional": positional_args,
                    "defaults": defaults,
                    "required": required,
                    "short_doc": kw.short_doc or "No documentation available.",
                    "long_doc": kw.doc or kw.short_doc or "No documentation available.",
                    "var_positional": var_positional_name,
                    "var_named": var_named_name,
                    # We store a simplified spec for JSON serialization.
                    # The full ArgumentSpec object is not directly serializable.
                    "arg_signature": self._format_arg_signature(kw.args)
                }
                keyword_data_list.append(kw_data)

                # Update keyword-to-libraries index
                if kw.name not in self._keyword_to_libraries_index:
                    self._keyword_to_libraries_index[kw.name] = []
                if lib_name not in self._keyword_to_libraries_index[kw.name]:
                    self._keyword_to_libraries_index[kw.name].append(lib_name)

        except Exception as e:
            # Log this error if running in a context where logs are visible
            # print(f"ERROR loading keywords for {lib_name}: {type(e).__name__} - {e}", file=sys.stderr)
            return [] # Return empty list on error

        self._library_keywords_cache[lib_name] = keyword_data_list
        return keyword_data_list

    def _format_arg_signature(self, args_spec: ArgumentSpec) -> str:
        """Formats the argument signature for display."""
        parts = []
        for arg in args_spec.positional:
            if arg in args_spec.defaults:
                parts.append(f"{arg}={args_spec.defaults[arg]}")
            else:
                parts.append(arg)
        if args_spec.var_positional:
            parts.append(f"*{args_spec.var_positional}")
        if args_spec.var_named:
            parts.append(f"**{args_spec.var_named}")
        return ", ".join(parts)

    def find_keyword_in_libraries(self, keyword_name_prefix):
        """
        Finds libraries that contain keywords matching the given prefix.
        Returns a dict: {keyword_name: [lib_name1, lib_name2, ...]}
        """
        matching_keywords = {}
        all_libs = self.get_all_robot_libraries()
        for lib_name in all_libs:
            keywords = self.get_library_keywords(lib_name)
            for kw_data in keywords:
                if kw_data["name"].lower().startswith(keyword_name_prefix.lower()):
                    if kw_data["name"] not in matching_keywords:
                        matching_keywords[kw_data["name"]] = []
                    matching_keywords[kw_data["name"]].append(lib_name)
        return matching_keywords

    def get_keyword_details(self, library_name, keyword_name):
        """
        Retrieves full details for a specific keyword from a specific library.
        Returns the keyword data dictionary or None if not found.
        """
        keywords = self.get_library_keywords(library_name)
        for kw_data in keywords:
            if kw_data["name"] == keyword_name:
                return kw_data
        return None

# Example usage (for testing the backend logic):
if __name__ == "__main__":
    backend = RobotIntellisenseBackend()

    print("--- Discovering all Robot Framework Libraries ---")
    libraries = backend.get_all_robot_libraries()
    if libraries:
        print(f"Found {len(libraries)} potential libraries:")
        for lib in libraries[:10]: # Print first 10 for brevity
            print(f"- {lib}")
        if len(libraries) > 10:
            print(f"...and {len(libraries) - 10} more.")
    else:
        print("No Robot Framework libraries found.")

    print("\n--- Introspecting Keywords from 'BuiltIn' Library ---")
    builtin_keywords = backend.get_library_keywords("BuiltIn")
    if builtin_keywords:
        print(f"Found {len(builtin_keywords)} keywords in BuiltIn library:")
        for kw in builtin_keywords[:5]: # Print first 5 for brevity
            print(f"  - {kw['name']}({kw['arg_signature']})")
            print(f"    Doc: {kw['short_doc']}")
        if len(builtin_keywords) > 5:
            print(f"...and {len(builtin_keywords) - 5} more.")
    else:
        print("Failed to load keywords from BuiltIn library.")

    print("\n--- Finding where 'Log' keyword exists ---")
    log_keyword_locations = backend.find_keyword_in_libraries("Log")
    if log_keyword_locations:
        for kw_name, libs in log_keyword_locations.items():
            print(f"Keyword '{kw_name}' found in: {', '.join(libs)}")
    else:
        print("Keyword 'Log' not found in any library.")

    print("\n--- Getting details for 'Log' keyword from 'BuiltIn' ---")
    log_details = backend.get_keyword_details("BuiltIn", "Log")
    if log_details:
        print(f"Details for 'Log':")
        print(f"  Name: {log_details['name']}")
        print(f"  Signature: {log_details['arg_signature']}")
        print(f"  Required Args: {log_details['required']}")
        print(f"  Defaults: {log_details['defaults']}")
        print(f"  Short Doc: {log_details['short_doc']}")
        print(f"  Long Doc: {log_details['long_doc']}")
    else:
        print("Could not retrieve details for 'Log' from 'BuiltIn'.")

    # Example of how a plugin might get all libraries as JSON
    # print("\n--- All Libraries (JSON Output) ---")
    # print(json.dumps(backend.get_all_robot_libraries(), indent=2))

    # Example of how a plugin might get keywords for a library as JSON
    # print("\n--- BuiltIn Keywords (JSON Output) ---")
    # print(json.dumps(backend.get_library_keywords("BuiltIn"), indent=2))
