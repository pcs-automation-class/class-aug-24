choose = 'run'

while choose == 'run':
    answer = input("Choose what to convert \n1 - C to F, \n2 - F to C \nq for quit: ")

    if answer.lower() == "q":
        break
    value = float(input("Type value to convert: "))

    if answer == "1":
        Fahrenheit = (value * 9 / 5) + 32
        print(f"Celsius to Fahrenheit: {Fahrenheit} F")
    elif answer == "2":
        Celsius = (value - 32) * 5 / 9
        print(f"Fahrenheit to Celsius: {Celsius} C")
    else:
        print("Invalid input")
