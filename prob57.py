import sys
sys.setrecursionlimit(1500)

def countDigits(num):
    numStr = str(num)
    return len(numStr)

def getFraction(order):
    if order == 1:
        return (3, 2)
    else:
        den, num = recursiveFunction(order - 1)
        return (den * 1 + num, den)

def recursiveFunction(order):
    if order == 1:
        return (5, 2)
    else:
        order -= 1
        b, a = recursiveFunction(order)
        return (b * 2 + a, b)

count = 0
for i in xrange(1,1001):
    num, den = getFraction(i)
    if countDigits(num) > countDigits(den):
        count += 1

print count
