import math

def findPrimes(num):
    primeList = range(num + 1)
    i = 2
    while i < num ** 0.5:
        while primeList[i] == 0:
            i += 1
        j = primeList[i]
        while j < num:
            j += i
            if j < num:
                primeList[j] = 0
        i += 1
    return primeList

primes = findPrimes(10000000)
print sum(primes)
