# a = 2
# b = 6
# #and
# if a >1 and b > 5:
#     pass
# True,True=True
# True,False=False
# False,True=False
#
# #or
# if a >1 or b > 5:
#     pass
# True,True=True
# True,False=True
# False,True=True
# False,False=False
#
# #not
# if not c>1
#  pass
# False => True
# True => False


# list, tuple, set, dictionary

# LIST[] ordered ,changeable ,indexed

# list_of_numbers =[]
# list_of_numbers_2 = list()
# list_of_numbers_3 = [1, 5, 7, 9]
# list_of_strings =["apple", "banana", "cherry"]
# list_of_booleans = [True, False, True]
# mixed_list = ["apple", "5" , True ]
# #  index        0,      1,     2
#
# print(list_of_numbers_3)
# print(mixed_list)
# print(type(mixed_list))
# print(mixed_list[0])
# print(mixed_list[1])
# print(mixed_list[2])
#
# mixed_list[1] = "banana"  # change index 0 in the list
# print(mixed_list)
# mixed_list[2] = "banana"
# print(mixed_list)
#
# mixed_list.append("cherry")
# print(mixed_list)
#
# mixed_list.remove("banana")   # remove when you know the value
# print(mixed_list)
#
# mixed_list.pop(1) # remove when you know the index
# print(mixed_list)

# TUPLE ()- ordered,unchangeable,indexed - can nor delete or change anything .It's a set of values
# tuple_of_numbers = (1, "banana", 7, True)
# tuple_1 = tuple()
# tuple_2 = ()
#
# print(tuple_of_numbers)
# print(type(tuple_1))
# print(tuple_of_numbers[1])
#
# office_lat = 13.12345
# office_long = -122.12345
#
# office_coordinates = (13.12345, -122.12345)
# offices_coordinates = ((13.12345, -122.12345), (12.12345, -100.12345))
#
# print(offices_coordinates[1][1])
#
# # SET {} collection, unordered,unchangeable not index .In set only unique values
#
# set_1 = set()
# set_2 = {2,1, 2, 3, 2, 1}
# set_3 = {"cherry", "banana", "apple","apple","orange","pear"}
#
#
# print(set_2)
# print(type(set_2))
# print(set_3)
#
# list_of_month =['march', 'january', 'february', 'january', 'january', 'june']
# set_of_month= set(list_of_month)
# print(set_of_month)
#
# ordered_list = tuple(set_of_month)
# print(ordered_list)

# DICTIONARY
# dict_1 = dict()
# dic_2 = {
#     #key , value_pair
#     0: "",
#     1: 1,
#     "abc" : "bcububi",
#     "cdneov2": [],
#     5: {},
# }
#
# student_1 ={
#     "first_name": "Stela",
#     "last_name": "Smith",
#     "age": 25,
#     "shoe_size": 7
# }
#
# print(student_1)
# print(type(student_1))
# print(student_1["age"])
# student_1["fruit"] = ["apple","orange","banana"]
# print(student_1)
# student_1["shoe_size"]= 8.5
# print(student_1)

# LOOPS
# for(know when it stopes),while( you have to stop or runs nonstop)

# print(1)
# print(2)
# print(3)
# print(4)
# print(5)
# for i in range(5):
#     print(i)

# name=["Stela", "Ivanova"]
# name = 'Stela Ivanova'
# for char in name:
#     if char == 'a':
#         break
#         # continue
#     print(char)
# print('Done!')
#

# Homework : Converter  miles => km ; km => miles
#                         F => C ; C => F

# while True:
#     answer = input("Chose what to convert:\n Chose  1 for km to miles \n Chose 2 for miles to km \n Chose q for quit\n Enter your choice ")
#     if answer.lower() == "q":
#         break
#     value = float(input("Type value to convert: "))
#
#     if answer == "1":
#         miles = value * 0.631371
#         print(f"Kilometer to miles {miles} miles")
#     elif answer == "2":
#         kilometer = value * 1.60934
#         print(f"Miles to kilometer {value} kilometers")
#
#     else:
#          print("Invalid input")
#  Convert : F => C ; C => F .

while True :
    answer = input( "Chose 1 to convert F to C \n Chose 2 to convert C to F \n Chose q to quit \n Enter your choice")
    if answer == "q":
        break
    value = float(input("Type value to convert: "))

    if answer == "1":
        F = value * 33.8
        print(f"Celsius to Fahrenheit is : {F} F")
    elif answer == "2":
        C = value * -17.2222
        print(f"Fahrenheit to Celsius is : {C} C")
    else:
        print("Invalid input")
    # Continue or Not

    answer1= input("Do you want to try again?\n Y for Yes \n N for No\n Your choice :")
    if answer1 == "Y":
        continue
    if answer1 == "N":
        break

















