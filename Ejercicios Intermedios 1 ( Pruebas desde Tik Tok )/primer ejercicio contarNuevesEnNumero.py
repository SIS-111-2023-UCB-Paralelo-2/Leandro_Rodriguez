numeros = input("Ingrese los números separados por un espacio en blanco: ")
numeros_lista = numeros.split()
total_count = 0

for num_str in numeros_lista:
    count = 0
    for digito in num_str:
        if digito == '9':
            count += 1
    if count > 0:
        print(f"El número de 'nueves' en el número {num_str} es: {count}")
        total_count += count

if total_count == 0:
    print("No se encontraron 'nueves' en los números ingresados.")
else:
    print(f"El número total de 'nueves' encontrados es: {total_count}")
