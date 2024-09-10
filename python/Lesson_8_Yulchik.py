# # 1////// miles to km and km to miles/////////////
#
# # answer = input("choose what to convert 1 - km to miles, 2-miles to km:")
answer = input ("choose what to convert \n1 - km to miles, \n2 - miles to km:")
value = float(input("type value to convert:"))

if answer == "1":
    miles = value * 0.621371
    print(f"km to miles: {miles} miles ")
    # answer in 1km  =0.621371 miles
    # answer in 10km  =6.21371 miles
elif answer == "2":
    km = value * 1.60934
    print(f"miles to km: {km} km")
    #answer in 1 miles = 1.60934 km
    #answer in 10 miles = 16.0934 km



# # 2////////  km to meters, meters to km and meters to centimeters ///////
answer = input("choose what to convert \n1 - km to meters, \n2 - meters to km:")
value = float(input("type value to convert:"))

if answer == "1":
    meters = value * 1000
    # answer 1 km = 1000 meters
    print(f"km to meters: {meters} meters")

elif answer == "2":
    km = value * 0.001
    # answer in 1 meters = 0,001 km
    print(f"meters to km: {km} km")

elif answer == "3":
    cm = value * 100
    print(f"meters to cm: {cm} cm")



# # 3/////// fahrenheit to celsius and celsius to fahrenheit
degrees = input("choose what to convert \n1 - fahrenheit to celsius, \n2 - celsius to fahrenheit: ")
value = float(input("type value to convert :"))

if degrees == "1":
    F = value * 33.8
    # answer in 1 C = 33.8 F
    print(f"C to F: {F} F")
elif degrees == "2":
    C = value * -17.2222
    #answer
    print(f"F to C: {C} C")


# 4  ///////////////choose Yes to Continue or No to Stop /////////////////
choose = 'yes'

while choose == 'yes':
    answer = input("Choose what to answer \n1 - yes to continue \n2 - no to to stop \nq for quit: ")
    if answer.lower()  == "no":
        choose = "stop"
