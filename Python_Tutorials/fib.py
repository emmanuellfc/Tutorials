from time import time
def fib(n):
    if n < 2:
        return n
    else:
        return fib(n-1) + fib(n-2)

t0  = time()
ans = fib(40)
t1  = time()
print(f'Computed fib(40) = {ans} in {t1-t0:.2f} seconds')