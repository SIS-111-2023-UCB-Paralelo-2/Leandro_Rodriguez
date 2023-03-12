Algoritmo validarPrimeraLetra
	Definir palabra Como Caracter
	Definir primera_letra Como Caracter
	Escribir 'Ingrese una palabra o frase:'
	Leer palabra
	primera_letra <- Subcadena(palabra,1,1)
	Si primera_letra='A' Entonces
		Escribir 'CORRECTO'
	SiNo
		Escribir 'INCORRECTO'
	FinSi
FinAlgoritmo
