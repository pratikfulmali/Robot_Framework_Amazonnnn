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

# Palindrome string verification 
str1="MADAM"
str2=str1[::-1]
if str1==str2:
    print("The string is a palindrome.")
else:
    print("The string is not a palindrome.")


# No is palindrome or not
no1=121
no2=str(no1)[::-1]
if str(no1)==no2:
    print("The number is a palindrome. =",no1)
else:        
    print("The number is not a palindrome. =",no1)

# remove dublicate from list

dublicatelst=[2,3,4,5,3,6,87,6,4,3,3,9,9,]
dublicatelst=sorted(dublicatelst)
count_dub={}
for i in dublicatelst :
        if i in count_dub:
            count_dub[i] +=1
        else:
            count_dub[i] =1    
for key, value in count_dub.items():
        print(f"{key} occurs {value} times")         



strlist = ["Amit","Dada","Rocky","Gajju","Esha","ishika","Omkar","Pratik"]
strlist = sorted(strlist)

vowels = ["a","e","i","o","u"]
countVowels = {}

for name in strlist:
    first_char = name[0].lower()   # check first letter in lowercase
    if first_char in vowels:
        if first_char in countVowels:
            countVowels[first_char] += 1
        else:
            countVowels[first_char] = 1        