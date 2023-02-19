Algoritmo CalcularVolumenCilindro
    // Definir las variables
    Definir radio, altura, volumen como numérico
    Definir numPi como numérica
    numPi <- 3.14159
    
    // Datos
    Escribir "Ingrese el radio del cilindro: "
    Leer radio
    Escribir "Ingrese la altura del cilindro: "
    Leer altura
    
    // Verificar que el radio sea válido
    Si radio <= 0 Entonces
        Escribir "Error: el radio debe ser mayor que cero."
    Sino
        // Verificar que la altura sea válida
        Si altura <= 0 Entonces
            Escribir "Error: la altura debe ser mayor que cero."
        Sino
            // Calcular el volumen del cilindro
            volumen <- pi * radio * radio * altura
            
            // Mostrar el resultado
            Escribir "El volumen del cilindro es: ", volumen
        FinSi
    FinSi
FinAlgoritmo
