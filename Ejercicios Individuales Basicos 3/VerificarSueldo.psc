Algoritmo VerificarSueldo
	// Definir variables
	Definir sueldo_actual,sueldo_minimo Como Real
	// Pedir al usuario que ingrese su sueldo actual
	Escribir 'Por favor, ingrese su sueldo actual en bolivianos: '
	Leer sueldo_actual
	// Validar que el sueldo actual sea mayor o igual a cero
	Mientras sueldo_actual<0 Hacer
		Escribir 'Error: el sueldo no puede ser negativo. Por favor, ingrese su sueldo actual en bolivianos nuevamente: '
		Leer sueldo_actual
	FinMientras
	// Pedir al usuario que ingrese el sueldo mínimo
	Escribir 'Por favor, ingrese el sueldo mínimo en bolivianos: '
	Leer sueldo_minimo
	// Validar que el sueldo mínimo sea mayor o igual a cero
	Mientras sueldo_minimo<0 Hacer
		Escribir 'Error: el sueldo mínimo no puede ser negativo. Por favor, ingrese el sueldo mínimo en bolivianos nuevamente: '
		Leer sueldo_minimo
	FinMientras
	// Comprobar si el sueldo actual es mayor que el sueldo mínimo
	Si sueldo_actual>sueldo_minimo Entonces
		Escribir 'Felicidades, su sueldo actual es mayor que el sueldo mínimo.'
	SiNo
		Escribir 'Lo siento, su sueldo actual es igual o menor que el sueldo mínimo.'
	FinSi
	// Finalizar programa
	Escribir '-----------------------------------'
	Escribir 'Gracias por utilizar este programa.'
	Escribir '-----------------------------------'
FinAlgoritmo
