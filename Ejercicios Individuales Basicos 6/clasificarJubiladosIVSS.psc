Algoritmo clasificarJubiladosIVSS
    Definir edad, antiguedad, tipo_jubilacion Como Entero
    Escribir("Ingrese la edad de la persona: ")
    Leer edad
    Escribir("Ingrese la antigüedad en su empleo (en años): ")
    Leer antiguedad
    Si edad >= 60 Entonces
        Si antiguedad < 25 Entonces
            tipo_jubilacion <- 1
        Sino
            tipo_jubilacion <- 3
        FinSi
    Sino
        Si antiguedad >= 25 Entonces
            tipo_jubilacion <- 2
        Sino
            tipo_jubilacion <- 0
        FinSi
    FinSi
    Segun tipo_jubilacion Hacer
        0: Escribir("La persona no cumple con los requisitos para jubilarse.")
        1: Escribir("La persona se jubilará por edad.")
        2: Escribir("La persona se jubilará por antigüedad joven.")
        3: Escribir("La persona se jubilará por antigüedad adulta.")
    FinSegun
FinAlgoritmo