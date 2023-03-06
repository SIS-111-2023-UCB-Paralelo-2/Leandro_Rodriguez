Algoritmo CalcularPorcentaje
	
	// Declarar variables
	Definir numerito Como Entero
	Definir porcentaje Como Real
	
	// Pedir al usuario que ingrese un número
	Escribir "Por favor, ingrese un número: "
	Leer numerito
	
	// Validar que el número sea mayor o igual a cero
	Mientras numerito < 0 Hacer
		Escribir "Error: el número no puede ser negativo. Por favor, ingrese un número nuevamente: "
		Leer numerito
	FinMientras
	
	// Comprobar si el número ingresado es mayor que 500
	Si numerito > 500 Entonces
		// Si es mayor que 500, calcular el impuesto como el 18% del número
		porcentaje <- numerito * 0.18
		Escribir "El 18% de " numerito " es de ", porcentaje
	Sino
		// Si no es mayor que 500, no se calcula el impuesto y se muestra un mensaje indicándolo
		Escribir "Lo siento, no se aplica para números menores o iguales a 500."
	FinSi
	
	// Finalizar programa
	Escribir '-----------------------------------'
	Escribir 'Gracias por utilizar este programa.'
	Escribir '-----------------------------------'
	
FinAlgoritmo
