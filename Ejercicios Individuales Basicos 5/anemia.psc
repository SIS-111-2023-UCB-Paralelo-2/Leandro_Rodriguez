Algoritmo anemia
	Definir nombre, sexo Como Caracter
	Definir hemoglobina Como Real
	Definir edad Como Entero
	Escribir "¡Bienvenido/a al programa de análisis clínicos!"
    Escribir "Este programa te ayudará a determinar si tienes anemia según tu nivel de hemoglobina en la sangre."
	Escribir "Cuál es su bonito nombre?"
	Leer nombre
	Escribir "Ingrese su edad :" nombre
    Leer edad
    
    Escribir "Ingrese el sexo de la persona (M o F):"
    Leer sexo
    
    Escribir "Ingrese el nivel de hemoglobina en g%:"
    Leer hemoglobina
	Si (edad >= 0 y edad <= 1) Entonces
		rango_min = 13
		rango_max = 26
	SiNo
		Si(edad > 1 y edad <= 6) Entonces
			rango_min = 10
			rango_max = 18
		SiNo
			Si (edad > 6 y edad <= 12) Entonces
				rango_min = 11
				rango_max = 15
			SiNo
				Si (edad > 12 y edad <= 15) Entonces
					Si (sexo == "F") Entonces
						rango_min = 12
						rango_max = 16
					SiNo
						rango_min = 13
						rango_max = 15.5
						
					FinSi
				SiNo
					Si (edad > 15) Entonces
						Si (sexo == "F") Entonces
							rango_min = 12
							rango_max = 16
						SiNo
							rango_min = 14
							rango_max = 15
						FinSi
					FinSi
				FinSi
			FinSi
		FinSi
	FinSi
	Si (hemoglobina < rango_min o hemoglobina > rango_max) Entonces
        Escribir "Malas noticias " nombre ", la prueba de detecticion de anemia dio positivo :("
    Sino
        Escribir "Buenas noticias " nombre ", la prueba de detecticion de anemia dio negativo :)"
		Escribir "Pero igual sea cuidados@ con su alimentación"
    FinSi
FinAlgoritmo
