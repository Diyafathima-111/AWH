name=input("Enter first name:")
l=name.split()
count=0
for x in l:
    x=x.lower()
    for letters in x:
        if letters=='a':
            count+=1
print(count)
