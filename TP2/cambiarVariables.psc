Algoritmo cambiarVariables	
	
    // Solicitar al usuario el valor de las variables numéricas
	Definir variable1, variable2, variableAuxiliar Como Entero
    Escribir "Ingrese el valor de la variable1: "
    Leer variable1
	
    Escribir "Ingrese el valor de la variable2: "
    Leer variable2
	
    // Intercambiar los valores de las variables
    variableAuxiliar = variable1
    variable1 = variable2
    variable2 = variableAuxiliar
	
    // Mostrar los valores intercambiados al usuario
    Escribir "Los valores intercambiados son:"
    Escribir "variable 1 = ", variable1
    Escribir "variable 2 = ", variable2

FinAlgoritmo
