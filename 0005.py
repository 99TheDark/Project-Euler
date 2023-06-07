num = 20
while True:
    good = True
    for i in range(11, 20):
        if num % i != 0:
            good = False
    if good:
        print(num)
        break
    else:
        num += 20