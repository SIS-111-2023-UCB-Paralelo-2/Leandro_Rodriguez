Algoritmo CapicúaONo
	// Definir las variables
	Definir num1, num2, num3, numEntero Como Entero
	Escribir "Este programa te ayudará a determinar si el número ingresado es capicúa o no."
	
	// Se solicita el primer dígito del número y se verifica que sea un número entre 0 y 9
	Escribir "Escribe el primer dígito de tu número."
	Leer num1
	Si num1 >= 0 y num1 <= 9 Entonces
		// Se solicita el segundo dígito del número y se verifica que sea un número entre 0 y 9
		Escribir "Ahora escribe el segundo dígito de tu número."
		Leer num2
		Si num2 >= 0 y num2 <= 9 Entonces
			
			// Se solicita el tercer dígito del número y se verifica que sea un número entre 0 y 9
			Escribir "Y por último el tercer dígito de tu número."
			Leer num3
			Si num3 >= 0 y num3 <= 9 Entonces
				
				// Se convierten los dígitos en un número entero de 3 cifras
				numEntero = (num1 * 100) + (num2 * 10) + num3
				
				// Se verifica si el número es mayor a 100 para garantizar que tenga 3 cifras
				Si numEntero > 100 Entonces
					
					// Se verifica si el número es capicúa (si el primer dígito es igual al tercer dígito)
					Si num1 = num3 Entonces
						Escribir "El número: ", numEntero, " es Capicúa."
					SiNo
						Escribir "El número: ", numEntero, " no es Capicúa."
					Fin Si
				SiNo
					Escribir "El número: ", numEntero, " no es Capicúa."
				Fin Si
			SiNo
				Escribir "Valor no valido" 
			Fin Si
		SiNo
			Escribir "Valor no valido" 
		Fin Si
	SiNo
		Escribir "Valor no valido" 
Fin Si
FinAlgoritmo