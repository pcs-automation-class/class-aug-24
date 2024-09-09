"""Create your program based on class.
Add ability to convert temperature:
F -> C
C -> F
* extra. Ask user “Continue ?” continue if answer “yes”, “yEs”...
Stop if “No”, and stay asking until user answer yes or no. Do not accept any other answers"""


def temp_in_c(temperature):
    return (temperature - 32) / 1.8


def temp_in_f(temperature):
    return temperature * 1.8 + 32


to_continue = True
while to_continue:
    temp_unit = input("Choose your conversion: \nEnter C to convert Fahrenheit to Celsius  "
                      "\nEnter F to convert Celsius to Fahrenheit\n").upper()
    if temp_unit == 'C':
        temp_value = int(input("Please, enter the temperature in Fahrenheit to convert\n"))
        n = round(temp_in_c(temp_value), 2)
        print(f"The temperature is {n} degrees Celsius.")
    elif temp_unit == 'F':
        temp_value = int(input("Please, enter the temperature in Celsius to convert\n"))
        n = round(temp_in_f(temp_value), 2)
        print(f"The temperature is {n} degrees Fahrenheit.")
    else:
        print("Invalid input\n")

    should_continue = True
    while should_continue:
        answer = input("Do you want to continue? yes/no\n").lower()
        if answer == "no":
            to_continue = False
            should_continue = False
        elif answer == "yes":
            break
        else:
            print("Invalid input\n")
            continue
