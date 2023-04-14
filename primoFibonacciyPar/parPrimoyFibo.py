import math

num = int(input("ingrese un número entero positivo: "))
#Primo
def esPrimo(num):
    if num == 2:
        return True
    elif num < 2 or num % 2 == 0:
        return False
    else:
        esPrimo = True
        limite = int(math.sqrt(num))
        i = 3
        while i <= limite and esPrimo:
            if num % i == 0:
                esPrimo = False
                i += 2
        return esPrimo
 
#Par o Impar
if num % 2 == 0:
    print(num, "es par")
else:
    print(num, "es impar")

#primo
if esPrimo(num):
    print(num, "es primo")
else:
    print(num, "no es primo")
    
#fibonacci
a, b = 0, 1
while b < num:
    a, b = b, a + b
if b == num:
    print(num, "es un número fibonacci")
else:
    print(num, "no es un número fibonacci")
        
        
