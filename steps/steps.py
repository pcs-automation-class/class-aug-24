from time import sleep

from behave import step
from selenium.webdriver.common.by import By


@step('Open "{url}"')
def open_url(context, url):
    context.driver.get(url)


@step('Wait {sec} seconds')
def wait_sec(context, sec):
    sleep(int(sec))


@step('Click element "{xpath}"')
def click_element(context, xpath):
    element = context.driver.find_element(By.XPATH, xpath)
    element.click()


@step('Type "{text}" into "{xpath}"')
def step_impl(context, text, xpath):
    element = context.driver.find_element(By.XPATH, xpath)
    element.send_keys(text)


@step('Verify page by title "{text}"')
def verify_title(context, text):
    title = context.driver.title
    assert title == text


@step('Verify presents of element "{xpath}"')
def verify_presents_of_element(context, xpath):
    elements = context.driver.find_elements(By.XPATH, xpath)
    assert len(elements) == 1
