# name = " Sarah"
#
# age = 25
# shoe_size = 8.5
# is_male = False
# color = "green"
#
#
# a = 1
# b = 3
# # c = color + name
# c =a/b
#
# print(c)
# print(type(c))
# from python.lesson_7 import first_number
#
#
# def calculate(dicount,sineor_discount):
#     if age >= 65
#     print("Your price is :" + operator)
#
#         print(10*0.9)
#
#
# def calculate(num_1, num_2, operator):
#     print("Sign:" + operator)
#     if operator == "+":
#         print (num_1 + num_2)
#
#     elif operator == "-":
#         print(num_1 - num_2)
#
#     elif operator == "*":
#         print(num_1 * num_2)
#
#     elif operator == "/":
#         print(num_1 / num_2)
#     else:
#         print("invalid operator ")
#
#
# first_number = float(input("Enter first number: "))
# second_number = float(input("Enter second number: "))
# sign = input("Enter operator: ")
#
# calculate(first_number, second_number, sign)
#
# if sign == "+":
#     print("Sign:" + sign)
#     print(first_number + second_number)
#
# elif sign == "-" :
#     print("Sign:" + sign)
#     print(first_number - second_number)
#
# elif sign == "*" :
#     print("Sign:" + sign)
#     print(first_number * second_number)
#
# elif sign == "/" :
#     print("Sign:" + sign)
#     print(first_number / second_number)
# else:
#     print ("invalid operator ")
#
# if first_number >= second_number:
#     print("First number GREATER or EQUAL than second")
# else:
#     print("First number SMALLER than second")
#
# print("Done")
#
#
#
# first_name = input("Enter first name: ")
# last_name = input("Enter last name: ")
# age = int(input("Enter age: "))
#
# first_name = string(input("Enter first name: "))
# last_name = string(input("Enter last name: "))
# age = int(input("Enter age: "))
#
# if age < 16:
#     print("You qualify for 10% discount. Total ticket price - $9")
# elif age >= 65:
#     print("You qualify for 90% discount. Total ticket price - $1")
# else:
#     print ("Total ticket price - $10")


#block of inputs
firstName =input('First name: ')
lastName = input('Last name: ')
age = int(input('Age: '))

price = 10
discount = 0.1
senior_discount = 0.9

if age <= 16:
    print(firstName, lastName, 'your ticket price is ', 10 - price *discount )
elif age > 16 and age <= 65:
    print(firstName, lastName, 'your ticket price is ', price )
elif age > 65:
    print(firstName, lastName, 'your ticket price is ', 10 - price *senior_discount )







