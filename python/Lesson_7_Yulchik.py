# # name = "Andrey"
# """
# age: int = 23
# shoe_size: float = 12.0
# is_male: bool = True
# color = "green"
# """
#
# # a = 6
# # b = 3
# # # c = color + " " + name
# # c = a / b
# # print(c)
# # print(type(c))
#
#
# def calculate(num_1, num_2, operator):
#     print("Sign: " + operator)
#     if operator == "+":
#         print(num_1 + num_2)
#     elif operator == "-":
#         print(num_1 - num_2)
#     elif operator == "*":
#         print(num_1 * num_2)
#     elif operator == "/":
#         print(num_1 / num_2)
#     else:
#         print("Invalid operator")
#
#
# first_number = float(input("Enter first number: "))
# second_number = float(input("Enter second number: "))
# sign = input("Enter operator: ")
#
# calculate(first_number, second_number, sign)
# calculate(first_number, second_number, sign)
#
# # if sign == "+":
# #     print("Sign: " + sign)
# #     print(first_number + second_number)
# # elif sign == "-":
# #     print("Sign: " + sign)
# #     print(first_number - second_number)
# # elif sign == "*":
# #     print("Sign: " + sign)
# #     print(first_number * second_number)
# # elif sign == "/":
# #     print("Sign: " + sign)
# #     print(first_number / second_number)
# # else:
# #     print("Invalid operator")
#
# if first_number >= second_number:
#     print("First number GREATER or EQUAL than second")
# else:
#     print("First number SMALLER than second")
# print("Done")


######################### MY HOMWORK LESSON 7#################

first_name = input("Enter first name:")
last_name = input("Enter last name:")
age = int(input("Enter age:"))

ticket_price = 10
child_discount = 0.1
adult_discount = 0.9
original_ticket_price = 10
#For < 16 years old discount 10%
#For > 65 years old discount 90%

if age <=16:
    print("ticket price is $ :")
    print(first_name, last_name, 10 - ticket_price * child_discount)
    # or
    price: float = ticket_price *child_discount
    print("Thank you for your shopping and have a good day")
elif age <= 65:
    print("ticket price is")
    print(first_name, last_name, ticket_price * adult_discount)
    # or
    price: float = ticket_price * adult_discount
    print("discount only for persons over 65 years old")
elif age > 65:
    print("ticket price is $")
    print(first_name, last_name, 10 -  ticket_price * adult_discount)
    print("Thank you for your shopping and have a good day")
# # elif age > 16 and age <= 65:
#     print("ticket price is $ :")
#     print(first_name, last_name, ticket_price)
#     # or
#     price: float = ticket_price
#     print("Thank you for your shopping and have a good day")
else:
    print(ticket_price)
