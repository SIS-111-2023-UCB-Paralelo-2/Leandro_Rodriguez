def es_primo(num):
 
    if num < 2:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True


def es_fibonacci(num):

    a, b = 0, 1
    while b < num:
        a, b = b, a + b
    return b == num or num == 0


def es_par(num):

    return num % 2 == 0


num = int(input("Ingrese un número: "))

if es_primo(num):
    if es_fibonacci(num):
        if es_par(num):
            print(f"{num} es primo, fibonacci y es par")
        else:
            print(f"{num} es primo, fibonacci y es impar")
    else:
        if es_par(num):
            print(f"{num} es primo, no es fibonacci y es par")
        else:
            print(f"{num} es primo, no es fibonacci y es impar")
else:
    if es_fibonacci(num):
        if es_par(num):
            print(f"{num} no es primo, fibonacci y es par")
        else:
            print(f"{num} no es primo, fibonacci y es impar")
    else:
        if es_par(num):
            print(f"{num} no es primo, no es fibonacci y es par")
        else:
            print(f"{num} no es primo, no es fibonacci y es impar")
