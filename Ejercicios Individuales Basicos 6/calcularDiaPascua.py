def calcularDiaPascua(anio):
    A = anio % 19
    B = anio % 4
    C = anio % 7
    D = (19 * A + 24) % 30
    E = (2 * B + 4 * C + 6 * D + 5) % 7
    N = 22 + D + E
    if N <= 31:
        mes = 3
    else:
        mes = 4
        N -= 31
    return (N, mes)

anio = int(input("Ingrese un año para calcular la fecha del domingo de Pascua: "))
dia_pascua, mes_pascua = calcular_dia_pascua(anio)
print(f"El domingo de Pascua en el año {anio} fue el {dia_pascua} de {['marzo', 'abril'][mes_pascua-3]}.")
