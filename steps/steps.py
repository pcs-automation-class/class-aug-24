from time import sleep

from behave import step
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
from selenium.webdriver.support.wait import WebDriverWait

import api


@step('Open "{url}"')
def open_url(context, url):
    context.driver.get(url)


@step('Wait {sec} seconds')
def wait_sec(context, sec):
    sleep(int(sec))


@step('Click element "{xpath}"')
def click_element(context, xpath):
    # element = context.driver.find_element(By.XPATH, xpath)

    element = WebDriverWait(context.driver, 10).until(EC.element_to_be_clickable((By.XPATH, xpath)))
    element.click()


@step('Type "{text}" into "{xpath}"')
def type_text(context, text, xpath):
    element = WebDriverWait(context.driver, 10).until(EC.presence_of_element_located((By.XPATH, xpath)))
    # element = context.driver.find_element(By.XPATH, xpath)
    element.send_keys(text)


@step('Verify page by title "{text}"')
def verify_title(context, text):
    title = context.driver.title
    assert title == text, f"Description of error {text} not expected"


@step('Verify presents of element "{xpath}"')
def verify_presents_of_element(context, xpath):
    elements = context.driver.find_elements(By.XPATH, xpath)
    assert len(elements) == 1


@step("Fill out following information")
def create_project(context):
    elements = {
        'project': "//div[./label[text()='Project Name']]//input",
        'start_date': "//input[@placeholder='Start date']",
        'description': "//div[./label[text()='Project description']]//textarea",
        'dimension': "//span[text()='Period Dimension']",
        'duration': "//span[text()='",
    }
    for row in context.table:
        type_text(context, row[0], elements['project'])
        type_text(context, row[1], elements['start_date'])
        type_text(context, row[2], elements['description'])
        click_element(context, elements['dimension'])
        sleep(1)
        click_element(context, f"//li/span[text()='{row[3]}']")
        click_element(context, f"{elements['duration']}{row[4]}']")


@step("Fill out following information with keys")
def create_project_keys(context):
    elements = {
        'Project Name': "//div[./label[text()='Project Name']]//input",
        'Start date': "//input[@placeholder='Start date']",
        'Project description': "//div[./label[text()='Project description']]//textarea",
        'Period Dimension': "//span[text()='Period Dimension']",
        'Project Duration': "//div[./label[text()='Project Duration']]//span[text()='",
    }
    for row in context.table:
        if row.cells[0] in ['Project Name', 'Start date', 'Project description']:
            type_text(context, row.cells[1], elements[row.cells[0]])
        elif row.cells[0] == 'Period Dimension':
            click_element(context, elements[row.cells[0]])
            sleep(0.5)
            click_element(context, f"//li/span[text()='{row.cells[1]}']")
        else:
            click_element(context, f"{elements[row.cells[0]]}{row.cells[1]}']")


@step('Get weather in "{city}"')
def get_weather(context, city):
    weather = api.get_weather(city)
    print(weather)
