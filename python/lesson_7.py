# name = "Andrey"
"""
age: int = 23
shoe_size: float = 12.0
is_male: bool = True
color = "green"
"""

# a = 6
# b = 3
# # c = color + " " + name
# c = a / b
# print(c)
# print(type(c))


def calculate(num_1, num_2, operator):
    print("Sign: " + operator)
    if operator == "+":
        print(num_1 + num_2)
    elif operator == "-":
        print(num_1 - num_2)
    elif operator == "*":
        print(num_1 * num_2)
    elif operator == "/":
        print(num_1 / num_2)
    else:
        print("Invalid operator")


first_number = float(input("Enter first number: "))
second_number = float(input("Enter second number: "))
sign = input("Enter operator: ")

calculate(first_number, second_number, sign)
calculate(first_number, second_number, sign)

# if sign == "+":
#     print("Sign: " + sign)
#     print(first_number + second_number)
# elif sign == "-":
#     print("Sign: " + sign)
#     print(first_number - second_number)
# elif sign == "*":
#     print("Sign: " + sign)
#     print(first_number * second_number)
# elif sign == "/":
#     print("Sign: " + sign)
#     print(first_number / second_number)
# else:
#     print("Invalid operator")

if first_number >= second_number:
    print("First number GREATER or EQUAL than second")
else:
    print("First number SMALLER than second")
print("Done")
