def funcion_factorial(numero_factorial):
    factorial = 1
    for i in range(1, numero_factorial + 1):
        factorial = factorial * i
    return factorial

numero_factorial = int(input("Ingrese el número del que desea obtener un factorial: "))
factorial = funcion_factorial(numero_factorial)
print(factorial)
