Algoritmo JuegoDePreguntas
	
	Definir preguntas Como Cadena
	Definir respuestas Como Cadena
	Definir sl Como Entero
	Definir n0 Como Entero
	Definir incorrectas_consecutivas Como Entero
	Definir aciertos Como Real
	Definir i, n Como Entero
	
	preguntas <- ""
	respuestas <- ""
	sl <- 0
	n0 <- 0
	incorrectas_consecutivas <- 0
	
	Escribir "Ingrese la cantidad de preguntas que desea responder: "
	Leer n
	
	Para i <- 1 Hasta n Con Paso 1 Hacer
		Escribir "Ingrese la pregunta ", i, ": "
		Leer pregunta
		Escribir "¿La respuesta es Sí o No? "
		Leer respuesta
		Si respuesta = "Sí" o respuesta = "si" Entonces
			sl <- sl + 1
			incorrectas_consecutivas <- 0
		SiNo
			n0 <- n0 + 1
			incorrectas_consecutivas <- incorrectas_consecutivas + 1
		FinSi
		preguntas <- preguntas + pregunta + "|"
		respuestas <- respuestas + respuesta + "|"
	FinPara
	
	aciertos <- sl / n
	
	Escribir "Resultados del juego:"
	Escribir "Preguntas respondidas con Sí:", sl
	Escribir "Preguntas respondidas con No:", n0
	Escribir "Preguntas incorrectas consecutivas:", incorrectas_consecutivas
	
	Si aciertos >= 0.8 Entonces
		Escribir "¡Felicitaciones! Has ganado el juego."
		medio <- n / 2
		Si medio = medio Entonces
			medio <- medio - 1
		FinSi
		preguntas <- Subcadena(preguntas, medio * 2 + 1, 2)
		respuestas <- Subcadena(respuestas, medio * 2 + 1, 2)
		Si medio_respuesta = "Sí" o medio_respuesta = "si" Entonces
			Escribir "La pregunta del medio es:", preguntas, "- Respuesta: Sí"
		SiNo
			Escribir "La pregunta del medio es:", respuestas, "- Respuesta: No"
		FinSi
	SiNo
		Escribir "Lo siento, no has ganado el juego."
	FinSi
	
FinAlgoritmo
