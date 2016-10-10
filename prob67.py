import string

f = open('triangle.txt', 'r')

tree = []

for line in f:
    newLine = string.split(line)
    results = map(int, newLine)
    tree.append(results)

longest = tree[len(tree) - 1]
rev = range(len(tree))
rev.reverse()

for i in rev:
    if len(longest) <= 1:
        break
    temp = []
    for j in range(len(tree[i]) - 1):
        if longest[j] > longest[j + 1]:
            temp.append(longest[j])
        else:
            temp.append(longest[j + 1])
    k = 0;
    for num in temp:
        longest[k] = num + tree[i - 1][k]
        k += 1

print "The longest path is ", longest
