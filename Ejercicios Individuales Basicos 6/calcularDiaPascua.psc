Algoritmo calcularDiaPascua
    Definir A, B, C, D, E, N, mes Como Entero
    Escribir("Ingrese un año para calcular la fecha del domingo de Pascua: ")
    Leer anio
    A <- anio MOD 19
    B <- anio MOD 4
    C <- anio MOD 7
    D <- (19 * A + 24) MOD 30
    E <- (2 * B + 4 * C + 6 * D + 5) MOD 7
    N <- 22 + D + E
    Si N <= 31 Entonces
        mes <- 3
        Escribir "El domingo de Pascua en el año ", anio, " fue el ", N, " de marzo."
    Sino
        mes <- 4
        N <- N - 31
        Escribir "El domingo de Pascua en el año ", anio, " fue el ", N, " de abril."
    FinSi
FinAlgoritmo