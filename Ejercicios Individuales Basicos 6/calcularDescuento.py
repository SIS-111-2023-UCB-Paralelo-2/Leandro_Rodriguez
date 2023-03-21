def calcularDescuento(num_computadoras):
    precio_unitario = 4000
    if num_computadoras < 5:
        descuento = 0.1
    elif num_computadoras < 10:
        descuento = 0.2
    else:
        descuento = 0.4
    precio_total = num_computadoras * precio_unitario
    descuento_total = precio_total * descuento
    precio_final = precio_total - descuento_total
    return precio_final

num_computadoras = int(input("Ingrese el número de computadoras que desea comprar: "))
precio_final = calcular_descuento(num_computadoras)
print(f"El precio final de la compra de {num_computadoras} computadoras es de Bs. {precio_final}.")