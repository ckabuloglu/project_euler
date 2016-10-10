import math
from sets import Set

def hcf(a, b):
    if b == 0:
        return a
    else:
        return hcf(b, a % b)


count = 0
fractions = Set()
for d in xrange(1, 1000001):
    print d
    for n in xrange(1, d):
        val = n / float(d)
        if val not in fractions:
            fractions.add(val)
            if hcf(n, d) == 1:
                count += 1

print "Final Count: ", count
