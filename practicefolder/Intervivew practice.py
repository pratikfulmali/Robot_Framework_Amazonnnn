#Find the most expensive phone from the given list of phones and their prices.

low=0
Device={
    "samsung":550000,
    "MI":30000,
    "Xiomi":90000,
    "I-Phone":180000
    }
for phone,price in Device.items():
    if price>low:
        low=price
        expDevice=phone
print("This is the most expencive Device:-",expDevice ," Its price is :",low)


 #Find the second highest from below list

l2=[3,4,6,7,8,9,33,23,45,66]
l2==l2.sort()
print(l2)
print(l2[-2])