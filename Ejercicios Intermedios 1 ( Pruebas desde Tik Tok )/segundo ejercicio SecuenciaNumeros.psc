Algoritmo SecuenciaNumeros
	Definir n, i, num Como Entero
	Escribir "Ingrese el número límite n:"
	Leer n
	num = 1
	Escribir num
	
	num = 1
	expresion = "1"
	Escribir expresion, " = ", num
	
	Para i = 2 Hasta n Con Paso 1 Hacer
		num = num + i
		expresion = expresion + " + " + ConvertirATexto(i)
		Escribir expresion, " = ", num
	FinPara


FinAlgoritmo
