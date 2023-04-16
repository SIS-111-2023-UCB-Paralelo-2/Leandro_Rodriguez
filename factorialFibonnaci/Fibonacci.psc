Algoritmo Fibonacci
    Escribir "Ingrese la cantidad de numeros de la serie de Fibonacci que desea ver: "
    Leer cantidad_fibonacci
    numero1 = 0
    numero2 = 1
    Escribir numero1
    Escribir numero2
    
    Para i desde 1 hasta cantidad_fibonacci-2 hacer
        numero_fibonacci = numero1 + numero2
        Escribir numero1, "+", numero2, "=", numero_fibonacci
        numero1 = numero2
        numero2 = numero_fibonacci
    FinPara
FinAlgoritmo
