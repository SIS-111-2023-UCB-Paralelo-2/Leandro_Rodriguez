cantidad = int(input("Ingrese la cantidad de cauchos a comprar: "))
if cantidad < 5:
    precio_unitario = 300
elif cantidad >= 5 and cantidad <= 10:
    precio_unitario = 250
else:
    precio_unitario = 200
precio_total = cantidad * precio_unitario
print("Precio unitario: ", precio_unitario)
print("Precio total: ", precio_total)
