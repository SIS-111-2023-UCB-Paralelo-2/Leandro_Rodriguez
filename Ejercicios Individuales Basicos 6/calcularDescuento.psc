Algoritmo calcularDescuento
	Definir cantidad, precioUnitario, descuento, precioTotal, num_computadoras Como real
    precio_unitario = 4000
    Escribir "Ingrese el número de computadoras a comprar:"
    Leer num_computadoras
    
    Si num_computadoras < 5 Entonces
        descuento = 0.1
    Sino Si num_computadoras < 10 Entonces
			descuento = 0.2
		Sino
			descuento = 0.4
		FinSi
	FinSi
	precio_total = num_computadoras * precio_unitario
	descuento_total = precio_total * descuento
	precio_final = precio_total - descuento_total
	
	Escribir "El precio final de la compra es: $", precio_final
FinAlgoritmo
