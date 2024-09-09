# Create program:
# Ask first name
# Ask second name
# Ask age.
# Original ticket price: $10
# if age less 16, apply discount 10%
# if age 65 or more apply 90% discount
# For other print full price

def price_calculation():
    original_price = float(10)
    user_name = input("Type your name: ")
    user_surname = input("Type your surname: ")
    user_age = int(input("Type your age: "))
    if user_age < 16:
        discount = 10
        price = original_price - (discount / 100) * original_price
        print("Hey " + user_name + " " + user_surname +
              "! You are " + str(user_age) + " years old and are eligible for " + str( discount) + "% discount! Your price is:", price)
    elif user_age > 65:
        discount = 90
        price = original_price - (discount / 100) * original_price
        print("Hey " + user_name + " " + user_surname +
              "! You are " + str(user_age) + " years old and are eligible for " + str(
            discount) + "% discount! Your price is:", price)
    else:
        discount = 0
        price = original_price - (discount / 100) * original_price
        print("Hey " + user_name + " " + user_surname + "! Your price is:", price)

price_calculation()