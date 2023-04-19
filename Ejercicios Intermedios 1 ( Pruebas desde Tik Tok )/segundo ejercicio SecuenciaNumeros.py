n = int(input("Ingrese el número límite n: "))

num = 1
expresion = "1"
print(expresion, "=", num)

for i in range(2, n+1):
    num = num + i
    expresion = expresion + " + " + str(i)
    print(expresion, "=", num)
