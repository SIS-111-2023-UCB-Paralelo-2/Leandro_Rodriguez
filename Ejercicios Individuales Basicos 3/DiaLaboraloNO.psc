Algoritmo DiaLaboraloNO
	
	// Declaración de variables
	Definir diaComoNumero Como Entero
	Definir diaComoTexto Como Caracter
	
	// Lectura de datos
	Escribir "Introduce un número del 1 al 7 para indicar el día de la semana: "
	Escribir "-------"
	Escribir "1 = Lunes"
	Escribir "2 = Martes"
	Escribir "3 = Miércoles"
	Escribir "4 = Jueves"
	Escribir "5 = Viernes"
	Escribir "6 = Sábado"
	Escribir "7 = Domingo"
	Escribir "-------"
	Escribir ""
	Leer diaComoNumero
	
	// Conversión de número a texto
	Si diaComoNumero = 1 Entonces
		diaComoTexto <- " Lunes"
	SiNo
		si diaComoNumero = 2 Entonces
			diaComoTexto <- "Martes"
		SiNo
			si diaComoNumero = 3 Entonces
				diaComoTexto <- "Miércoles"
			SiNo
				si diaComoNumero = 4 Entonces
					diaComoTexto <- "Jueves"
				SiNo
					si diaComoNumero = 5 Entonces
						diaComoTexto <- "Viernes"
					SiNo
						si diaComoNumero = 6 Entonces
							diaComoTexto <- "Sábado"
						SiNo
							si diaComoNumero = 7 Entonces
								diaComoTexto <- "Domingo"
							FinSi
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	
	// Comprobación de si es un día laboral o no
	Si diaComoNumero >= 1 y diaComoNumero <= 5 Entonces
		Escribir diaComoTexto " es un dia laboral D:"
	SiNo
		si diaComoNumero = 6 Entonces
			Escribir diaComoTexto " es un día laboral, pero solo por la mañana :D."
		SiNo
			si diaComoNumero = 7 Entonces
				Escribir " no es un día laboral :D."
			SiNo
				Escribir "El número introducido no es válido >:D."
				
			FinSi
		FinSi
	FinSi
	
FinAlgoritmo
