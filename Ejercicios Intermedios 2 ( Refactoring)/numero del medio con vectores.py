import random

jugadores = []
for i in range(2):
    nombre = input(f"Jugador {i+1}, ingrese su nombre: ")
    jugadores.append(nombre)

numAleatorio = random.randint(100, 999)
numMedio = (numAleatorio // 10) % 10
print("El número aleatorio de tres cifras ha sido generado")

for ronda in range(3):
    print(f"Ronda {ronda+1} - {jugadores[ronda%2]}, es su turno.")
    acierto = int(input("Ingrese su respuesta: "))
    if acierto == numMedio:
        print(f"¡Felicidades, {jugadores[ronda%2]}, ha adivinado el número del medio!")
        break
    else:
        print(f"Lo siento, {jugadores[ronda%2]}, no ha logrado adivinar el número del medio.")
else:
    print(f"Ronda final - {jugadores[-1]}, es su turno.")
    acierto = int(input("Ingrese su respuesta: "))
    if acierto == numMedio:
        print(f"¡Felicidades, {jugadores[-1]}, ha adivinado el número del medio!")
    else:
        print("Lo siento, ninguno de los dos ha logrado adivinar el número del medio.")
