Funcion variableRepetir <- funcionRepetir(numero)
	x=0
	Repetir
		x=x+1
		variableRepetir=variableRepetir+x
	Hasta Que x=numero
Fin Funcion
//=====================================================
Funcion variableMientras <- FuncionMientras(numero)
	x=0
	Mientras x < numero Hacer
		variableMientras=variableMientras+x
		x=x+1
	FinMientras
	
Fin Funcion
//=====================================================
Funcion variablePara <- funcionPara(numero)
	variablePara=0
	Para x = 0 Hasta numero Con Paso 1 Hacer
		variablePara=variablePara+x
		
	Fin Para
Fin Funcion
//=====================================================
Algoritmo suma
	Definir numero, opcion Como Entero
	Escribir "limite de numero para sumar"
	Leer numero
	Escribir "Escoja una opcion 1. mientras; 2. repetir; 3. para"
	Leer opcion
	Segun opcion Hacer
		1:
			Imprimir FuncionMientras(numero)
		2:
			Imprimir funcionRepetir(numero)
		3:
			Imprimir funcionPara(numero)
	Fin Segun
FinAlgoritmo