import random

def jugar_preguntas(n):
    preguntas = []
    respuestas = []
    sl = 0
    no = 0
    incorrectas_consecutivas = []
    for i in range(n):
        pregunta = input(f"Ingrese la pregunta {i+1}: ")
        respuesta = input("¿La respuesta es Sí o No? ").lower()
        preguntas.append(pregunta)
        respuestas.append(respuesta)
        if respuesta == "sí" or respuesta == "si":
            sl += 1
            incorrectas_consecutivas.append(0)
        else:
            no += 1
            if len(incorrectas_consecutivas) > 0:
                incorrectas_consecutivas[-1] += 1
        print()
    aciertos = sl / n
    return preguntas, respuestas, sl, no, incorrectas_consecutivas, aciertos

def reportar_resultados(preguntas, respuestas, sl, no, incorrectas_consecutivas, aciertos):
    print("Resultados del juego:")
    print("Preguntas respondidas con SI:", sl)
    print("Preguntas respondidas con NO:", no)
    print("Preguntas incorrectas consecutivas:", max(incorrectas_consecutivas))
    if aciertos >= 0.80:
        print("¡Felicitaciones! Has ganado el juego.")
        if len(preguntas) % 2 == 0:
            medio = len(preguntas) // 2 - 1
        else:
            medio = len(preguntas) // 2
        if respuestas[medio] == "sí" or respuestas[medio] == "si":
            print("La pregunta del medio es:", preguntas[medio], "- Respuesta: SI")
        else:
            print("La pregunta del medio es:", preguntas[medio], "- Respuesta: NO")
    else:
        print("Lo siento, no has ganado el juego.")

n = int(input("Ingrese la cantidad de preguntas que desea responder: "))
preguntas, respuestas, sl, no, incorrectas_consecutivas, aciertos = jugar_preguntas(n)
reportar_resultados(preguntas, respuestas, sl, no, incorrectas_consecutivas, aciertos)
