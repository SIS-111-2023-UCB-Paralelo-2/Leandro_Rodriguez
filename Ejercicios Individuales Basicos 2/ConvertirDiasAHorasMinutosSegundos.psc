Algoritmo ConvertirDiasAHorasMinutosSegundos
    // Declaración de variables
    Definir dias, horas, minutos, segundos Como numérico
    // Constantes para las conversiones
    HORAS_POR_DIA = 24
    MINUTOS_POR_HORA = 60
    SEGUNDOS_POR_MINUTO = 60
    // Entrada de datos
    Escribir "Este programa convierte una cantidad de días en horas, minutos y segundos."
    Escribir "Por favor ingrese el número de días que desea convertir: "
    Leer dias
    // Verificación de la entrada
    Si dias < 0 Entonces
        Escribir "El número de días ingresado no es válido. Por favor ingrese un valor positivo."
    Sino
        // Conversión a horas, minutos y segundos
        horas <- dias * HORAS_POR_DIA
        minutos <- horas * MINUTOS_POR_HORA
        segundos <- minutos * SEGUNDOS_POR_MINUTO
        // Salida de datos
        Si dias = 1 Entonces
            Escribir dias, " día equivale a:"
        Sino
            Escribir dias, " días equivalen a:"
        FinSi
        Escribir horas, " horas"
        Si horas = 1 Entonces
            Escribir minutos, " minuto"
        Sino
            Escribir minutos, " minutos"
        FinSi
        Si minutos = 1 Entonces
            Escribir segundos, " segundo"
        Sino
            Escribir segundos, " segundos"
        FinSi
    FinSi
FinAlgoritmo
