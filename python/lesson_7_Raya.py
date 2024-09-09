
def string(first_name):
    pass


first_name = string(input("Enter first name: "))
last_name = string(input("Enter last name: "))
age = int(input("Enter age: "))

if age < 16:
    print("You qualify for 10% discount. Total ticket price - $9")
elif age >= 65:
    print("You qualify for 90% discount. Total ticket price - $1")
else:
    print ("Total ticket price - $10")
