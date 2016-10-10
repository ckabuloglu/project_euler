'''
Corners are located at 1, 3, 5, 7, 9, 13, 17, 21, 25, 31, 37, 43, 49, 57, 65 ...
'''

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

    # primeList[:] = (x for x in primeList if x != 0)
    # primeList.remove(1)
    return primeList

# Generate corners:
ratio = 1
corners = [1]
cornerCount = 1
primeCount = 0
corner = 1
i = 2
j = 0

primes = findPrimes(250000000)

while ratio >= 0.1:
    if j == 4:
        i += 2
        j = 0

    corner = corner + i
    if primes[corner] > 0:
        primeCount += 1
    cornerCount += 1

    ratio = primeCount / float(cornerCount)
    print ratio

    if ratio < 0.1:
        sideLength = i + 1
        break

    j += 1

print corner
print sideLength
