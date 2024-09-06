#version 09.05.2024 Dmitrii

#block of inputs
firstName =input('Enter your first name: ')
lastName = input('Enter your last name: ')
age = int(input('Enter your age: '))

price = 10
discountUnder16 = 0.1
discountAbove65 = 0.9


#block of calculating
if age <= 10:
    print('You are not allowed to buy this product.')
elif age > 10 and age <= 16:
    print('Dear ', firstName, lastName, 'your price is ',  10*(1-discountUnder16) )
elif age > 16 and age <= 65:
    print('Dear ', firstName, lastName, 'your price is ', 10 )
elif age > 65:
    print('Dear ', firstName, lastName, 'your price is ', 10*(1-discountAbove65) )