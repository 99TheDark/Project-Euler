def triangle(n):
    return int(n * (n + 1) / 2)

def numFactors(num):
    return len([i for i in range(2, int(num / 2) + 1) if num % i == 0]) + 2

i = 1
while True:
    triangleNumber = triangle(i)
    factors = numFactors(triangleNumber)

    if factors > 500:
        print(triangleNumber)
        break
    else:
        i += 1