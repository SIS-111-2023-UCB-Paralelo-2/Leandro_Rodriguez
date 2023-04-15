def es_primo(num):
    """
    Función que devuelve True si el número es primo, False en caso contrario.
    """
    if num < 2:
        return False
    for i in range(2, int(num ** 0.5) + 1):
        if num % i == 0:
            return False
    return True


def es_fibonacci(num):
    """
    Función que devuelve True si el número es parte de la secuencia de Fibonacci, False en caso contrario.
    """
    a, b = 0, 1
    while b < num:
        a, b = b, a + b
    return b == num or num == 0


def es_par(num):
    """
    Función que devuelve True si el número es par, False en caso contrario.
    """
    return num % 2 == 0


# Pedimos al usuario que ingrese un número
num = int(input("Ingrese un número: "))

# Verificamos si es primo, fibonacci y par
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
