def isTest(n):
    for x in range(2, int(n**0.5) + 1):
        if n % x == 0:
            return 0
    return 1

numTest = 0

for x in range(2, 250001):
    numTest += isTest(x)

print(str(numTest))
