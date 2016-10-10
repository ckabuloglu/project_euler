def generateNextSquare(num):
    numStr = str(num)
    total = 0
    for c in numStr:
        total += int(c) * int(c)
    return total

successors = {}
loop89 = [85, 89, 145, 42, 20, 4, 16, 37, 58]
count = 0
set89 = set()
set1 = set()

for i in xrange(1,10000001):
    print i
    reached = False
    num = i
    temp = []
    while not reached:
        if num in set89:
            count += 1
            break
        elif num in set1:
            break
        elif num not in successors:
            temp.append(num)
            num2 = generateNextSquare(num)
            successors[num] = num2
            num = num2
        else:
            num = successors[num]

        if num == 89 or num in loop89:
            for each in temp:
                set89.add(each)
            count += 1
            break
        elif num == 1:
            for each in temp:
                set1.add(each)
            break

print "result: ", count
