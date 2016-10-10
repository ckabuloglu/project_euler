import math

def hcf(a, b):
    if (b == 0):
        return a
    else:
        return hcf(b, a % b)

val = 3.0 / 7
diff = 1

for d in xrange(1000000, 0, -1):
    lower = math.floor((val - (100000 / float(d))) * d)
    lower = int(lower)
    upper = math.ceil(val * d)
    upper = int(upper)
    print "d: ", d
    for n in xrange(upper, lower, -1):
        if hcf(n, d) == 1:
            val2 = n / float(d)
            tempDiff = val - val2
            if tempDiff > 0 and tempDiff < diff:
                targetN = n
                print targetN
                diff = tempDiff

print targetN
