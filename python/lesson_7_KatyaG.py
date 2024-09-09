first_name = input("Enter first name: ")
second_name = input("Enter second name: ")
age = int(input("Enter age: "))

ticket_price = 10
discount1 = 0.1
discount2 =0.9

if age < 16:
    print("Your ticket price is: ")
    tic_price: float = ticket_price * discount1
    tic_Price: float = ticket_price - tic_price
    print("$",tic_Price)
elif age >= 65:
    print("Your ticket price is: ")
    tic_price: float = ticket_price * discount2
    tic_Price: float = ticket_price - tic_price
    print("$", tic_Price)
elif age >= 16 and age < 65:
    print("Your ticket price is: ")
    print("$", ticket_price)

