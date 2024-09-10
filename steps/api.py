import requests


def get_weather(city):
    url = f"https://api.tomorrow.io/v4/weather/realtime?location={city}&apikey=NX6j4SODwtlAC3FCOLIXc6kwsDZMZU0R"
    headers = {"accept": "application/json"}
    response = requests.get(url, headers=headers)

    data = response.json()
    return f"Temperature in {city} is {data["data"]["values"]["temperature"]}°C"


if __name__ == "__main__":
    print(get_weather(city="Chicago"))
