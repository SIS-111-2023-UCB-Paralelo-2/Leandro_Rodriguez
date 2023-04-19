Algoritmo romanoaDecimal
	Definir a,c,d,u,n Como Entero
	Escribir "Escribe un numero"
	leer n
	m = trunc(n/1000) mod 10
	c = trunc(n/100) mod 10
	d = trunc(n/10) mod 10
	u = trunc(n/1) mod 10
	
	si m > 3 Entonces
		Escribir "El numero no se puede calcular"
	SiNo
		segun m hacer 
			1:
				Escribir "M" Sin Saltar
			2:
				Escribir "MM" Sin Saltar
			3:
				Escribir "MMM" Sin Saltar
		FinSegun
		
		segun c hacer
			1:
				Escribir "C" Sin Saltar
			2:
				Escribir "CC" Sin Saltar
			3:
				Escribir "CCC" Sin Saltar
			4:
				Escribir "CD" Sin Saltar
			5:
				Escribir "D" Sin Saltar
			6:
				Escribir "DC" Sin Saltar
			7:
				Escribir "DCC" Sin Saltar
			8:
				Escribir "DCCC" Sin Saltar
			9:
				Escribir "CM" Sin Saltar
		FinSegun
		
		Segun d hacer
			1:
				Escribir "X" Sin Saltar
			2:
				Escribir "XX" Sin Saltar
			3:
				Escribir "XXX" Sin Saltar
			4:
				Escribir "XL" Sin Saltar
			5:
				Escribir "L" Sin Saltar
			6:
				Escribir "LX" Sin Saltar
			7:
				Escribir "LXX" Sin Saltar
			8:
				Escribir "LXXX" Sin Saltar
			9:
				Escribir "XC" Sin Saltar
		FinSegun
		Segun u hacer
			1:
				Escribir "I"
			2:
				Escribir "II"
			3:
				Escribir "III"
			4:
				Escribir "IV"
			5:
				Escribir "V"
			6:
				Escribir "VI"
			7:
				Escribir "VII"
			8:
				Escribir "VIII"
			9:
				Escribir "IX"
		FinSegun
	FinSi  
FinAlgoritmo