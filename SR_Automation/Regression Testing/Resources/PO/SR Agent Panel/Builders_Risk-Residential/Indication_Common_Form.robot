*** Settings ***
Library                                     Browser
Library                                     ../../../../../SR_Custom_Library/SrCustomLib.py
Library                                     Collections

*** Variables ***
${Basic_Information_Panel_ID}               xpath=//span[normalize-space()='Basic Information']
${Insured_Full_Name_ID}                     xpath=//div/span[normalize-space()="Basic Information"]/ancestor::div[contains(@class, "card border")]//input[@name="data[sr_ic_name]"]
${Coverage_Effective_Date_ID}               xpath=//div/span[normalize-space()="Basic Information"]/ancestor::div[contains(@class, "card border")]//input[@name="data[sr_ic_coverage_effectivedate]"]


*** Keywords ***
Verify the Form Contains Basic Information Panel
    Wait For Elements State                 ${Basic_Information_Panel_ID}
