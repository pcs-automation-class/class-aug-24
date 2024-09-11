
programm = 'run'

while programm == 'run':
    question = input('Choose what to convert \n 1- Farenheits to Celsius \n 2- Celsius to Farenheits \n q- to stop \n')
    if question.lower()=='q':
        programm = 'stop'

    if programm=='stop':
        print('\n Thank you for using our convertor!')
        break

    value = float(input('Type value to convert: '))

    if question == '1':
        celsius = (value - 32) * 5 / 9
        print(f' \n Your celsius equivalent is: {celsius} farenheits ')

    elif question == '2':
        farenheit = (value * 1.8) + 32
        print(f' \n Your farenheit eqivalent is: {farenheit} celsius ')

    else:
        print('invalid input')

    question_2 = input(' Do you want to continue? \n Please choose yes or no\n')
    if question_2.lower()=='yes':
        programm = 'run'

    elif question_2.lower()=='no':
        print('\n Thank you for using our convertor!')
        break

    else:
        print('Invalid input')


