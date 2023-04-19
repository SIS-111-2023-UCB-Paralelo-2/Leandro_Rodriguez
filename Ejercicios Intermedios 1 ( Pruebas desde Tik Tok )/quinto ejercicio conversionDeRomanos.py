def numero_a_romano(numero):
    valores = [("M", 1000), ("CM", 900), ("D", 500), ("CD", 400), ("C", 100), ("XC", 90), ("L", 50), ("XL", 40), ("X", 10), ("IX", 9), ("V", 5), ("IV", 4), ("I", 1)]
    resultado = ""
    for letra, valor in valores:
        while numero >= valor:
            resultado += letra
            numero -= valor
    return resultado

def romano_a_numero(romano):
    valores = {"M": 1000, "D": 500, "C": 100, "L": 50, "X": 10, "V": 5, "I": 1}
    resultado = 0
    for i in range(len(romano)):
        if i > 0 and valores[romano[i]] > valores[romano[i - 1]]:
            resultado += valores[romano[i]] - 2 * valores[romano[i - 1]]
        else:
            resultado += valores[romano[i]]
    return resultado

def main():
    print("Seleccione una opción:")
    print("1. Convertir número a letras romanas")
    print("2. Convertir letras romanas a número")
    opcion = int(input())
    if opcion == 1:
        numero = int(input("Ingrese un número: "))
        romano = numero_a_romano(numero)
        print(f"{numero} en letras romanas es: {romano}")
    elif opcion == 2:
        romano = input("Ingrese letras romanas: ")
        numero = romano_a_numero(romano)
        print(f"{romano} en número es: {numero}")
    else:
        print("Opción inválida")

if __name__ == '__main__':
    main()
