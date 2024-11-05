def fibo(n):
    series=[0,1]
    for i in range(2,n):
        next=series[-1]+series[-2]
        series.append(next)
    return series[:n]
n=int(input("Enter the number of terms:"))
print("Fibonacci series:",fibo(n))
