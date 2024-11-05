list=[2,3,4,7]
list2=[]
list3=[]
for i in list:
     if (i%2==0):
      list2.append(i)
     else:
         list3.append(i)
print("even number:",list2)
print("odd number:",list3)
