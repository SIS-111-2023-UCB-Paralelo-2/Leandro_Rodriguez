Funcion divisiblee <- esDivisible ( num, divisor )
	Si num mod divisor = 0 Entonces
        divisiblee <- Verdadero
    SiNo
        divisiblee <- Falso
    FinSi
Fin Funcion


Algoritmo categoriaDeEmpleado
	Definir codigo, resultado Como Entero
    Escribir "Ingrese una cifra de tres números para identificar la categoría del empleado:"
    Leer codigo
	
	Si esDivisible(codigo, 2) y esDivisible(codigo, 3) y esDivisible(codigo, 5) Entonces
		resultado=1
	SiNo
		Si esDivisible(codigo, 3) y esDivisible(codigo, 5) y no esDivisible(codigo, 2) Entonces
			resultado=2
		SiNo
			Si esDivisible(codigo, 2) y no esDivisible(codigo, 3) y no esDivisible(codigo, 5) Entonces
				resultado=3
			SiNo
				resultado=4
			FinSi
		FinSi
		
	FinSi

	Segun resultado Hacer
        1: Escribir "Categoría del empleado: Director general"
        2: Escribir "Categoría del empleado: Directivo"
        3: Escribir "Categoría del empleado: Staff"
        4: Escribir "Categoría del empleado: Seguridad"
    FinSegun
	//num para las categorias
	//Director general: 120
	// Directivo: 315
	//Staff: 218
FinAlgoritmo
