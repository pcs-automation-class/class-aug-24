from behave import step
from selenium.webdriver.common.by import By


@step('fskjhgfjsgb "{text}"')
def jdghfjdjdgb(context, text):
    assert text == "abc", f"text {text}"
