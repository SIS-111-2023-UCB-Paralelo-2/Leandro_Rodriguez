Algoritmo sumaTresNumeros
	
    Definir total, num1, num2, num3, suma Como Entero
	
    Escribir "Ingrese un número total:"
    Leer total
	
    num2 = total / 3 
    num1 = num2 - 1          
    num3 = num2 + 1         
	
    suma = num1 + num2 + num3
	
    Si suma = total Entonces
        Escribir "La suma de los tres números es igual al número total."
        Escribir num1, "+", num2, "+", num3, "=", suma
    Sino
        Escribir "No se pudo generar la suma de tres números igual al número total."
    FinSi
	
FinAlgoritmo
