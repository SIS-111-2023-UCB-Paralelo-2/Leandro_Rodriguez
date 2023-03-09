Algoritmo convertirFechaAliteral
    Definir dia, mes, año Como Entero
    Definir mesLiteral Como Caracter
	Escribir "Ingrese el día (1-31)"
    Leer dia
    Escribir "Ingrese el mes (1-12)"
    Leer mes
    Escribir "Ingrese el año (4 dígitos)"
    Leer año
        Segun mes Hacer
        1: mesLiteral <- "Enero"
        2: mesLiteral <- "Febrero"
        3: mesLiteral <- "Marzo"
        4: mesLiteral <- "Abril"
        5: mesLiteral <- "Mayo"
        6: mesLiteral <- "Junio"
        7: mesLiteral <- "Julio"
        8: mesLiteral <- "Agosto"
        9: mesLiteral <- "Septiembre"
        10: mesLiteral <- "Octubre"
        11: mesLiteral <- "Noviembre"
        12: mesLiteral <- "Diciembre"
    FinSegun
    Escribir dia, " de ", mesLiteral, " de ", año
FinAlgoritmo
