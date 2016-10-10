def hcf(a, b):
    if (b == 0):
        return a
    else:
        return hcf(b, a % b)

lower = 1 / 3.0
upper = 1 / 2.0
count = 0

for n in xrange(0, 6001):
    # print n
    for d in xrange(n + 1, 12001):
        if hcf(d, n) > 1:
            continue
        else:
            num = n / float(d)
            if num > lower and num < upper:
                count += 1

print count
