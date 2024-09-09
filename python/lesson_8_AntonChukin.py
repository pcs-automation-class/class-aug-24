"""
Calculator with ability to convert temperature:
F -> C
C -> F
* extra. Ask user “Continue ?” continue if answer “yes”, “yEs”..
Stop if “No”, and stay asking until user answer yes or no. Do not accept any other answers
"""

#getting valid input
def get_temperature_scale():
    while True:
        user_input = input("You want to convert Fahrenheit or Celsius (F/C)? \U0001F601 ").upper()  # Get user input, strip whitespace, and convert to uppercase
        if user_input in ("F", "C"):
            return user_input
        else:
            print("Invalid input. Please enter 'F' for Fahrenheit or 'C' for Celsius.")

#getting numeric input
def get_numeric_input(prompt):
    while True:
        user_input = input(prompt)
        try:
            # Try to convert the input to a float
            numeric_value = float(user_input)
            return numeric_value
        except ValueError:
            # If conversion fails, print an error message and ask again
            print("Invalid input. Please enter a numeric value.")

# getting valid confirmation
def get_confirmation(prompt):
    while True:
        user_input = input(prompt).lower()  # Get user input and convert to lowercase
        if user_input in ("yes", "no"):
            return user_input
        else:
            print("Invalid input. Please enter 'yes' to continue or 'no' to quit.")

def t_convert():
    choice = get_temperature_scale()
    if choice == "F":
        t_celsius = get_numeric_input("Type temperature in Celsius: ")
        t_fahr = t_celsius*1.8 + 32
        print("Temperature in Fahrenheit is:", t_fahr)
    else:
        t_fahr = get_numeric_input("Type temperature in Fahrenheit: ")
        t_celsius = (t_fahr - 32)*5/9
        print("Temperature in Celsius is:", t_celsius)

def main():
    t_convert()
    while True:
        confirmation = get_confirmation("Do you want to continue? (yes/no): ")
        if confirmation == "yes":
            t_convert()
        else:
            return

#running the main function
main()