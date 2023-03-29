import math
import random

def el_mayor_de_tres_numeros(num1, num2, num3):
    return max(num1, num2, num3)

def sumatoria(num1, num2, num3):
    return num1 + num2 + num3

def aleatorio(num1, num2, num3):
    funciones = [el_mayor_de_tres_numeros, sumatoria]
    funcion_aleatoria = random.choice(funciones)
    return funcion_aleatoria(num1, num2, num3)

def formula(num1, num2, num3):
    if num1 < 10 or num1 > 99 or num2 < 10 or num2 > 99 or num3 < 10 or num3 > 99:
        print("Los números deben tener dos dígitos")
        return None

    resultado = 0
    if num1 > 2:
        resultado += 2**int(str(num1)[0])
        resultado += math.pi * int(str(num1)[-1])
    
    if num2 > 2:
        if len(str(num2)) == 2:
            resultado += num2 // 10 + num2 % 10
        elif len(str(num2)) > 3:
            resultado += num2 // 10 % 10 * num2 % 100 // 10 * num2 % 10
    
    if num3 > 2:
        if len(str(num3)) == 2:
            resultado += num3 // 10 + num3 % 10
        elif len(str(num3)) > 3:
            resultado += num3 // 10 % 10 * num3 % 100 // 10 * num3 % 10
    
    return resultado

def calcular_raiz_seno(num1, num2, num3):
    resultado = aleatorio(num1, num2, num3)
    if resultado is None:
        return None
    
    resultado = math.sqrt(resultado)
    resultado = math.sin(resultado)
    return resultado

numeros = input("Ingresa los tres numeros separados por coma: ")
num1, num2, num3 = map(int, numeros.split(","))

resultado = calcular_raiz_seno(num1, num2, num3)

if resultado is not None:
    print("El resultado es:", resultado)