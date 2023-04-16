cantidad_fibonnaci = int(input("Ingrese la cantidad de numeros de la serie de Fibonnaci que desea ver: "))
numero1 = 0
numero2 = 1
print(numero1)
print(numero2)

for i in range(cantidad_fibonnaci - 2):
    numero_fibonnaci = numero1 + numero2
    print(numero1, "+", numero2, "=", numero_fibonnaci)
    numero1 = numero2
    numero2 = numero_fibonnaci

