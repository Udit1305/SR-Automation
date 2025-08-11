from robot.api import logger
from faker import Faker
from datetime import datetime, timedelta
from robot.api.deco import keyword
import random_address
# from robot.libraries.BuiltIn import BuiltIn

from SR_HighView_Calculation import SrHighViewCalculation


class SrCustomLib:
    def __init__(self):
        # self.selLib = BuiltIn().get_library_instance("SeleniumLibrary")
        self.fake = Faker('en_US')

    @keyword
    def remove_char(self, text):
        for x in text:
            match x:
                case " " | "'" | '"' | ':' | "$":
                    text = text.replace(x, "")
        return text

    @keyword
    def generate_random_company_name(self):
        """Generates a fake Company Name."""
        fake_company_name = self.fake.company()
        logger.info(f"Generated fake Company Name: {fake_company_name}")
        return fake_company_name

    @keyword
    def generate_random_us_address_string(self):
        """Generates a fake US address."""
        address = random_address.real_random_address()
        address_list = [address['address1'], address['address2'], address['city'], address['state'],
                        address['postalCode']]
        address_string = ', '.join(address_list)
        logger.info(f"Generated fake US address: {address_string}")
        return address_string

    @keyword
    def generate_random_us_address_string_by_state(self, state):
        """Generates a fake US address."""
        address = random_address.real_random_address_by_state(state)
        address_list = [address['address1'], address['address2'], address['city'], address['state'],
                        address['postalCode']]
        address_string = ', '.join(address_list)
        logger.info(f"Generated fake US address: {address_string}")
        return address_string

    @keyword
    def generate_random_us_address(self):
        # Generate a fake US address
        address = random_address.real_random_address()
        # Get the address components
        address_1 = address['address1']
        address_2 = address['address2']
        city = address['city']
        state = address['state']
        postalCode = address['postalCode']
        # Return the address components
        return address_1, address_2, city, state, postalCode

    @keyword
    def generate_random_us_address_by_state(self, state):
        """Generate a fake US address"""
        address = random_address.real_random_address_by_state(state)
        """Get the address components"""
        address_1 = address['address1']
        address_2 = address['address2']
        city = address['city']
        state = address['state']
        postalCode = address['postalCode']
        # Return the address components
        return address_1, address_2, city, state, postalCode

    @keyword
    def get_next_day(self):
        """Get the next day's date in MM/DD/YYYY format."""
        current_date = datetime.now()
        next_day = current_date + timedelta(days=1)
        formatted_next_day = next_day.strftime("%m/%d/%Y")
        logger.info(f"Next Date is: {formatted_next_day}")
        return formatted_next_day


    @keyword
    def get_current_day(self):
        """Get the current day's date in MM/DD/YYYY format."""
        current_date = datetime.now()
        formatted_current_day = current_date.strftime("%m/%d/%Y")
        logger.info(f"Next Date is: {formatted_current_day}")
        return formatted_current_day

    @keyword
    def calculate_highView_premium(self, Payroll_Amount, Class_Code, State):
        payroll_amount = Payroll_Amount
        state = State
        class_code = Class_Code
        obj = SrHighViewCalculation(payroll_amount, state, class_code)
        hv_net_premium = obj.Calculate_HighView_Net_Premium()
        hv_total_premium = obj.calculate_HighView_Total_Premium()
        return hv_net_premium, hv_total_premium

    @keyword
    def format_currency(self, amount):
        """Formats a number as currency."""
        formatted_amount = f"${amount:,.2f}"
        return formatted_amount

    @keyword
    def generate_bank_routing_Number(self):
        routing_Number = self.fake.aba()
        return routing_Number

    @keyword
    def generate_fake_first_and_last_name(self):
        fname = self.fake.first_name()
        lname = self.fake.last_name()
        return fname, lname

    @keyword
    def generate_fake_email(self):
        email = self.fake.email()
        return email

    @keyword
    def get_total_of_element_count(self, element1: int = 0, element2: int = 0, element3: int = 0, element4: int = 0):
        return element1 + element2 + element3 + element4
