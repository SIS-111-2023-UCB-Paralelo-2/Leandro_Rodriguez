Algoritmo CambiosdeUnidades
	// Declarar variables
	metros = 0
	centimetros = 0
	milimetros = 0
	pulgadas = 0
	
	// Pedir al usuario la cantidad de metros
	Escribir "Ingrese la cantidad de metros: "
	Leer metros
	
	// Convertir a centímetros y milímetros
	centimetros = metros * 100
	milimetros = metros * 1000
	
	// Convertir a pulgadas
	pulgadas = metros / 0.0254
	
	// Mostrar el resultado al usuario
	Escribir metros, " metros equivalen a ", centimetros, " centímetros, ", milimetros, " milímetros y ", pulgadas, " pulgadas."
FinAlgoritmo
