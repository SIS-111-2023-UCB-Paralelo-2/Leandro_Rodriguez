Algoritmo VerificarLetra
	
	// Definición de variables
	Definir numero_letra Como Entero
	Definir seguir Como Caracter
	
	// Mensaje de bienvenida
	Escribir 'Bienvenido a este programa que te ayudará a determinar si una letra es vocal o consonante.'
	Escribir ''
	// Descripción de las letras
	Repetir
		Escribir 'Por favor ingrese el número correspondiente a la letra que desea seleccionar.'
		Escribir ''
		Escribir 'Letras:'
		Escribir '-------'
		Escribir '1 = a, 2 = b, 3 = c, 4 = d, 5 = e'
		Escribir '6 = f, 7 = g, 8 = h, 9 = i, 10 = j'
		Escribir '11 = k, 12 = l, 13 = m, 14 = n, 15 = ñ'
		Escribir '16 = o, 17 = p, 18 = q, 19 = r, 20 = s'
		Escribir '21 = t, 22 = u, 23 = v, 24 = w, 25 = x,'
		Escribir '26 = y, 27 = z'
		Escribir '-------'
		Escribir ''
		Leer numero_letra
		Si numero_letra<=0 O numero_letra>27 Entonces
			Escribir 'El valor ingresado no coincide con ninguna letra.'
			Escribir '¿Desea intentar de nuevo? (s/n)'
			Leer seguir
		SiNo
			seguir <- 'n'
		FinSi
	Hasta Que seguir='n'
	Si numero_letra=1 O numero_letra=5 O numero_letra=9 O numero_letra=16 O numero_letra=22 Entonces
		Escribir 'La letra seleccionada es una VOCAL.'
	SiNo
		Escribir 'La letra seleccionada es una CONSONANTE.'
	FinSi
	
	// Mensaje de despedida
	Escribir ''
	Escribir '-----------------------------------'
	Escribir 'Gracias por utilizar este programa.'
	Escribir '-----------------------------------'
	
FinAlgoritmo
