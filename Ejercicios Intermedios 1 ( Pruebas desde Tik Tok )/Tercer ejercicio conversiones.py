opcion1 = "Convertir de decimal a binario"
opcion2 = "Convertir de binario a decimal"

print("Seleccione una opción:")
print("1. ", opcion1)
print("2. ", opcion2)

opcion = int(input())

if opcion == 1:
    decimal = int(input("Ingrese un número decimal: "))
    binario = bin(decimal)[2:]
    print("El número en binario es:", binario)
elif opcion == 2:
    binario = input("Ingrese un número binario: ")
    decimal = 0
    potencia = 0
    for i in range(len(binario)-1, -1, -1):
        if binario[i] == '1':
            decimal += 2 ** potencia
        potencia += 1
    print("El número en decimal es:", decimal)
else:
    print("Opción inválida.")
