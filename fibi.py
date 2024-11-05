f=0
s=1
n=int(input('upto which element'))
for a in range(1,n):
    t=f+s
    print(t)
    f,s=s,t
