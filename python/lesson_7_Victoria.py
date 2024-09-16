first_name = input('Enter your first name: ')
second_name = input('Enter your second name: ')
age = int(input("How old are you?"))
cost = 10
if age < 16:
    print(age, first_name, second_name, f"Ticket cost:{cost - cost / 10}$")
elif age > 65:
    print(age, first_name, second_name, f"Ticket cost:{cost - cost / 90}$")
else:
    print(age, first_name, second_name, f"Ticket cost:{cost}$")
