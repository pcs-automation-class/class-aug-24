
def calculate_price(age, initial_price):
    # for age 16 or less discount is 10 %
    if age <= 16:
        return round(initial_price * 0.9, 2)
    # for age 65 or more discount is 90 %
    elif age >= 65:
        return round(initial_price * 0.1, 2)
    # For all others full price
    else:
        return round(initial_price, 2)


first_name = input("Enter your first name: ")
last_name = input("Enter your last name: ")
your_age = int(input("Enter your age: "))
ticket_price = 10.00
price = calculate_price(your_age, ticket_price)
print(f"Hi {first_name} {last_name}! Your ticket price is $ {'{:.2f}'.format(price)}")
