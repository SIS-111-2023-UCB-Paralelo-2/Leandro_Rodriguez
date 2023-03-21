Algoritmo compraCauchos
    Definir cantidad, precioUnitario, precioTotal Como Entero
    Definir descuento Como Real
    
    Escribir "Ingrese la cantidad de cauchos que desea comprar: "
    Leer cantidad
    
    Si cantidad < 5 Entonces
        precioUnitario <- 300
        descuento <- 0
    Sino Si cantidad >= 5 y cantidad <= 10 Entonces
			precioUnitario <- 250
			descuento <- 0.2
		Sino
			precioUnitario <- 200
			descuento <- 0.4
		FinSi
	FinSi
	precioTotal <- cantidad * precioUnitario * (1 - descuento)
	
	Escribir "El precio unitario de cada caucho es: ", precioUnitario
	Escribir "El total a pagar es: ", precioTotal
	
FinAlgoritmo
