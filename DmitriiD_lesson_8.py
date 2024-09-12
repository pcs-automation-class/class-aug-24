

print("Welcome to conversion program")
x :int =0

while x != '5':
      print("to convert miles to kilometers press     1\n"
      "to convert kilometers to miles press     2\n"
      "to convert Celsius to Fahrenheit press   3\n"
      "to convert Fahrenheit to Celsius press   4\n"
      "to stop program press                    5")
      x = input("\nPress options number: ")
      if x == '1':
            num = float(input("Enter the number of kilometers: "))
            print(round(num / 1.609,2), "miles\n")
      elif x == '2' :
            num = float(input("Enter the number of miles: "))
            print(round(num * 1.609,2), "kilometers\n")
      elif x == '3':
            num = float(input("Enter the number of Celsius: "))
            print(round(num * 9/5+32), "Fahrenheit\n")
      elif x == '4':
            num = float(input("Enter the number of Fahrenheit: "))
            print(round((num - 32 ) * 5/9), "Celsius\n")
      elif x == '5':
            print("SEE YOU!")
            break
      else: print("Invalid option")

      y: str = '1'
      while y !='yes':
            y:str = input("do you want to continue yes/no: ")
            if y == 'yes': y:str = 'yes'
            elif y == 'no':
                  x:str='5'
                  break
            else:print("Invalid input")

