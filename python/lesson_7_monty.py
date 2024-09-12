firstname=input("Enter your First Name:")
lastname=input("Enter your last Name:")
age=int(input("Enter your Age:"))
ticket_price=10

def calculate(your_age):
    if your_age < 16:
        result=10*0.9
        print("Your ticket price is ",result,"$")
    elif your_age >= 65:
        result=10*0.1
        print("Your ticket price is " ,result,"$")
    else:
        print("Your ticket price is 10$")

calculate(age)
