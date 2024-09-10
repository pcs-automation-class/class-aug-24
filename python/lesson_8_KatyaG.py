choose = 'run'
while choose == 'run':
    answer = input("Choose what to convert \n'F' - Fahrenheit to Celsius, \n'C' - Celsius to Fahrenheit ")

    value = float(input("Type value to convert: "))

    if answer == "F":
        fahr_to_cel = (value - 32) / 1.8
        print(f"Fahrenheit to Celsius: {fahr_to_cel} Celsius")
    elif answer == "C":
        cel_to_fahr = (value * 1.8) + 32
        print(f"Celsius to Fahrenheit: {cel_to_fahr} Fahrenheit")
    else:
        print("Invalid input")

    answer1 = input("Continue? Choose: 'yes' or 'no'")
    if answer1 == "no":
        break
    elif answer1 == "yes":
        continue
    else: break


