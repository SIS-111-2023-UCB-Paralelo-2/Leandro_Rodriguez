total = int(input("Ingrese un número total: "))

# calcular el número medio y los números adyacentes
num_medio = total // 3
num1 = num_medio - 1
num2 = num_medio
num3 = num_medio + 1

# realizar la suma
suma = num1 + num2 + num3

# imprimir la suma si es igual al número total
if suma == total:
    print(f"{num1} + {num2} + {num3} = {total}")
else:
    print("No se encontraron tres números enteros que sumen el número total.")

