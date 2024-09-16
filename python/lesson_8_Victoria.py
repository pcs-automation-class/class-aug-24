def convert_f_to_c(cesium): # function to convert f to c
    return cesium * 1.8 + 32

def convert_c_to_f(fahrenheit):  # function to convert c to f
    return (fahrenheit - 32) / 1.8

def asking_user():
    while True: # infinity LOOP for input item menu
        print("choice item menu:\n1. convert f to c\n2. convert c to f")
        item = int(input("Enter your choice: ")) # console input for item menu
        if item == 1:
            c = int(input("Enter c: ")) # console input c
            print("f = ", convert_f_to_c(c)) # console output function result convert_f_to_c
        elif item == 2:
            f = int(input("Enter f: "))
            print("c = ", convert_c_to_f(f))
        else: # if item menu neither 1 neither 2
            print("Invalid choice")
            answer = "" # variables for user answer on continue
            while answer.lower() not in ["yes", "no"]: # we must ask user until his response yes or no
                answer = input("Do you want to try again? (yes/no): ") # console input for continue
            if answer.lower() == "yes": # if user input  = yes, we continue
                continue
            elif answer.lower() == "no": # if user input = no, we end of infinitive LOOP
                break

asking_user()
