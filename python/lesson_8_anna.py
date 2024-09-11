cont = 'yes'
while cont != 'no':
    answer = input("What to convert? \nFahrenheit to Celsius type 1 \nCelsius to Fahrenheit type 2 \nType q for exit: ")
    if answer.lower() == 'q':
        break
    if answer == '1':
        value = float(input('Type value to convert: '))
        celsius = (value - 32) * 5 / 9
        print(f'{celsius} Celsium in {value} Fahrenheit')
    elif answer == '2':
        value = float(input('Type value to convert: '))
        fahrenheit = (value * 9/5) + 32
        print(f'{fahrenheit} Fahrenheit in {value} Celsium')
    else:
        print('Invalid input')
    cont = input("Continue? Type 'yes' or 'no': ").lower()
    while cont != 'yes' and cont != 'no':
        print('Invalid input')
        cont = input("Continue? Type 'yes' or 'no': ").lower()
