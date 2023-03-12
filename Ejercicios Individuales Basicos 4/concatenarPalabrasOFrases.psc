Proceso concatenarPalabrasOFrases
    Definir palabra Como Caracter
    Definir longitudd Como Entero
    Escribir "Ingrese una palabra o frase:"
    Leer palabra
    longitudd = Longitud(palabra)
    Si longitudd = 4 Entonces
        palabra = Concatenar(palabra, "!")
    SiNo
        palabra = Concatenar(palabra, "?")
    FinSi
	Escribir ""
    Escribir "La frase final es:", palabra
FinProceso
