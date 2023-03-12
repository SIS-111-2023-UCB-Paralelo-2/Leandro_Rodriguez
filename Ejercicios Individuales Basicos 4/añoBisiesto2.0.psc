Algoritmo  añoBisiesto
	Definir year Como Entero
Escribir "Ingrese un año:"
Leer year
Si year mod 4 = 0 Entonces
	Si year mod 100 <> 0 O year mod 400 = 0 Entonces
		Escribir year, " es un año bisiesto."
	SiNo
		Escribir year, " no es un año bisiesto."
	FinSi
SiNo
	Escribir year, " no es un año bisiesto."
FinSi
FinAlgoritmo
