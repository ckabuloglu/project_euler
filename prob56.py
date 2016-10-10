
def findDigitSum(num):
    numStr = str(num)
    totalSum = 0
    for c in numStr:
        totalSum += int(c)
    return totalSum

maxSum = 0

for i in xrange(100, 0, -1):
    for j in xrange(100, 0, -1):
        newSum = findDigitSum(i**j)
        if newSum > maxSum:
            maxSum = newSum

print maxSum
