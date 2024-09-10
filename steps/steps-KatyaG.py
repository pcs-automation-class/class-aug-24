from time import sleep

from behave import step
from selenium.webdriver.common.by import By


@step('Katya open "{url}"')
def open_url(context, url):
    context.driver.get(url)


@step('Katya wait {sec} seconds')
def wait_sec(context, sec):
    sleep(int(sec))

@step('Katya type "{text}" into "{xpath}"')
def type_text(context, text, xpath):
    element = context.driver.find_element(By.XPATH, xpath)
    element.send_keys(text)

@step('Katya click element "{xpath}"')
def click_element(context, xpath):
    element = context.driver.find_element(By.XPATH, xpath)
    element.click()

@step('Katya verify page by title "{text}"')
def verify_title(context, text):
    title = context.driver.title
    assert title == text