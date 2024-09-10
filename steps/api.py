import requests
# from time import sleep
import time

# time.sleep()
# sleep()


def get_weather(city: str = "Chicago"):
    url = f"https://api.tomorrow.io/v4/weather/realtime?location={city}&apikey=NX6j4SODwtlAC3FCOLIXc6kwsDZMZU0R"
    headers = {"accept": "application/json"}
    response = requests.get(url, headers=headers)

    data = response.json()
    return f"Temperature in {city} is {data["data"]["values"]["temperature"]}°C"


if __name__ == "__main__":
    print(get_weather("San Francisco"))


