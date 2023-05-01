import random

print("Partido relámpago de fútbol")
n_equipos = int(input("Ingrese la cantidad de equipos (debe ser un múltiplo de 4): "))

while n_equipos % 4 != 0:
    n_equipos = int(input("La cantidad de equipos debe ser un múltiplo de 4. Ingrese un número válido: "))

direcciones = ['Dirección 1', 'Dirección 2', 'Dirección 3', 'Dirección 4']

equipos = [f'Equipo{i}' for i in range(1, n_equipos + 1)]
random.shuffle(equipos)

print('Los equipos participantes son: ')
for i, equipo in enumerate(equipos):
    print(f'{i + 1}. {equipo}')

opcion = int(input("\nIngrese el número de un equipo para ver sus partidos: "))
while opcion not in range(1, n_equipos + 1):
    opcion = int(input("\nEl número ingresado no está en la lista. Ingrese otro número: "))

equipo_escogido = equipos[opcion - 1]

partidos = [(equipos[i], equipos[i+1]) for i in range(0, n_equipos, 2)]
ganadores = [random.choice(partido) for partido in partidos]

semifinales = [(ganadores[i], ganadores[i+1]) for i in range(0, len(ganadores), 2)]
final = random.choice(semifinales)

print('\nResultados de los partidos: ')
for partido in partidos:
    resultado = random.choice(partido)
    print(f'{partido[0]} vs {partido[1]}: {resultado} gana')

print('\nResultados de las semifinales: ')
for semifinal in semifinales:
    resultado = random.choice(semifinal)
    print(f'{semifinal[0]} vs {semifinal[1]}: {resultado} gana')

print('\nResultado de la final: ')
print(f'{final[0]} vs {final[1]}: {direcciones[3]} gana')

if equipo_escogido in final:
    print(f'\n¡{equipo_escogido} llegó a la final!')
elif equipo_escogido in ganadores:
    print(f'\n{equipo_escogido} ganó en las semifinales')
elif equipo_escogido in equipos:
    print(f'\n{equipo_escogido} perdió en las semifinales')
