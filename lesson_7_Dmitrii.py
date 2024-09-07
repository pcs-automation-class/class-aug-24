#version 09.06.2024 Dmitrii

#block of inputs
firstName =input('Enter your first name: ')
lastName = input('Enter your last name: ')
age = int(input('Enter your age: ')  )

def final_price(price, discount):
    return price * (1-discount)

price = 10

##block of calculating
if age <= 10:
    print('You are not allowed to buy this product.')
elif age > 10 and age <= 16:
    discount=0.1
    print('Dear ', firstName, lastName, 'your price is ',  final_price(price, discount) )
elif age > 16 and age <= 65:
    print('Dear ', firstName, lastName, 'your price is ', price )
elif age > 65:
    discount=0.9
    print('Dear ', firstName, lastName, 'your price is ', round(final_price(price, discount), 2) )


