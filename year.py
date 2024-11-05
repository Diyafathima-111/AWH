n1=int(input("enter the current year"))
n2=int(input("enter the final yeare"))
for i in range(n1,n2):
    if i%4==0 or i%400==0 and i%100!=0:
         print("leap year",i)
