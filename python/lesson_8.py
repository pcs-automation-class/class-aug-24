# a = 0
# b = 6
#
# # and
# if a > 1 and b > 5:
#     pass
#
# True True = True
# False True = False
# True False = False
# False False = False
#
# # or
# if a > 1 or b > 5:
#     pass
# True True = True
# False True = True
# True False = True
# False False = False
#
# c = 2
#
# # not
# if not c > 1:
#     pass
#
# False -> True
# True -> False

# list, tuple, set, dictionary

# LIST
# list_of_numbers = []
# list_of_numbers_2 = list()
# list_of_numbers_3 = [1, 5, 7, 9]
# list_of_string = ["apple", "banana", "cherry"]
# list_of_boolean = [True, False, True]
# mixed_list = ["Andrey", "B", 23]
#
# print(mixed_list)
# print(type(mixed_list))
#
# print(mixed_list[0])
# print(mixed_list[1])
#
# mixed_list[1] = "Banana"
# print(mixed_list)
#
# mixed_list.append("Cherry")
# print(mixed_list)
#
# mixed_list.remove("Cherry")
# print(mixed_list)
#
# mixed_list.pop(0)
# print(mixed_list)

# TUPLE
# tuple_of_numbers = (1, "banana", 5, 7, 9)
# tuple_1 = tuple()
# tuple_2 = ()
#
# print(tuple_of_numbers)
# print(type(tuple_of_numbers))
#
# print(tuple_of_numbers[1])
#
# office_lat = 13.12345
# office_long = -122.12345
#
# office_coordinates = (13.12345, -122.12345)
# offices_coordinates = ((13.12345, -122.12345), (12.12345, -100.12345))
#
# print(offices_coordinates[0][1])

# SET
# set_1 = set()
# set_2 = {2, 1, 2, 3, 2, 1}
# set_3 = {'cherry', 'banana', 'apple', 'orange', 'apple', 'pear'}
#
# print(set_2)
# print(type(set_2))
#
# print(set_3)
#
# list_of_month = ['March', 'January', 'February', 'January', 'January']
# set_of_month = set(list_of_month)
#
# print(set_of_month)
#
# ordered_list = tuple(set_of_month)
# print(ordered_list)


# DICTIONARY
# dict_1 = dict()
# # key: value
# dict_2 = {
#     0: "",
#     1: 1,
#     'a': 'asdfdgfh',
#     'asas': []
# }
#
# student_1 = {
#     'name': 'Andrey',
#     'last_name': 'Baykov',
#     'age': 23,
#     'shoe_size': 12.5
# }
#
# print(student_1)
# print(type(student_1))
#
# print(student_1['age'])
# student_1['fruit'] = ['apple', 'orange', 'banana']
#
# print(student_1)
#
# student_1['shoe_size'] = 11
# print(student_1)

# for , while

# name = ['Andrey', 'Baykov']
# name = 'Andrey Baykov'
#
# for char in name:
#     if char == 'y':
#         break
#         # continue
#     print(char)
#
# print("Done")
choose = 'run'

while choose == 'run':
    answer = input("Choose what to convert \n1 - km to miles, \n2 - miles to km \nq for quit: ")
    # if answer.lower() == "q":
    #     break
    if answer.lower() == "q":
        choose = "quit"

    value = float(input("Type value to convert: "))

    if answer == "1":
        miles = value * 0.621371
        print(f"Kilometer to miles: {miles} miles")
    elif answer == "2":
        kilometer = value * 1.60934
        print(f"Miles to kilometer: {kilometer} km")
    else:
        print("Invalid input")
