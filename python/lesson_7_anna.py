
def calculate_price(original_price, age):
    if age < 16:
        finish_price = original_price - (original_price * 0.1)
        print('Your ticket price is $', int(finish_price))
    elif age >= 64:
        finish_price = original_price - (original_price * 0.9)
        print('Your ticket price is $', int(finish_price))
    else:
        print('Your ticket price is $10')


first_name = input('Enter first name: ')
second_name = input('Enter second name: ')
age = int(input('Enter age: '))
original_price = 10

calculate_price(original_price, age)

