alumnos = []
continua = []
final = []
faltas = []

n_alumnos = int(input("¿Cuántos alumnos desea evaluar? "))

for i in range(n_alumnos):
    nombre_alumno = input("Nombre y apellido del alumno {}: ".format(i+1))
    carrera = input("Carrera: ")
    materia = input("Materia: ")
    semestre = input("Semestre: ")
    faltas_alumno = int(input("¿Cuantas fueron tus faltas injustificadas? "))
    faltas.append(faltas_alumno)
    if faltas_alumno >= 8:
        print("Reprobaste")
        continua.append(0)
        final.append(0)
    else:
        hiciste = input("¿Hiciste tus Practicos y Proyectos en clase? (si/no) ")
        if hiciste == "si":
            practicos = int(input("¿Cuantos Practicos Realizaste? "))
            proyectos = int(input("¿Cuantos Proyectos Realizaste? "))
            practicos_y_proyectos = (practicos + proyectos) / 2
            print("Tu promedio de Practicos y Proyectos es: ", practicos_y_proyectos)
            if practicos_y_proyectos >= 60:
                print("Aprobaste la materia")
                continua_alumno = float(input("Nota de evaluación continua: "))
                final_alumno = float(input("Nota de evaluación final: "))
                continua.append(continua_alumno)
                final.append(final_alumno)
            else:
                print("Reprobaste la materia")
                continua.append(0)
                final.append(0)
        else:
            print("No se puede evaluar tu promedio de Practicos y Proyectos porque no los hiciste en clase")
            continua.append(0)
            final.append(0)
    alumnos.append(nombre_alumno)

def contar_aprobados_reprobados(notas):
    aprobados = 0
    reprobados = 0
    for nota in notas:
        if nota >= 6.0:
            aprobados += 1
        else:
            reprobados += 1
    return aprobados, reprobados

def porcentaje_faltas(faltas):
    contador = 0
    for f in faltas:
        if f > 7:
            contador += 1
    return contador / len(faltas) * 100

def separar_notas(alumnos, notas):
    alta = []
    media = []
    baja = []
    for i in range(len(alumnos)):
        if notas[i] >= 90:
            alta.append(alumnos[i])
        elif notas[i] >= 60:
            media.append(alumnos[i])
        else:
            baja.append(alumnos[i])
    return alta, media, baja

alta, media, baja = separar_notas(alumnos, final)

aprobados_continua, reprobados_continua = contar_aprobados_reprobados(continua)

aprobados_final, reprobados_final = contar_aprobados_reprobados(final)

porcentaje = porcentaje_faltas(faltas)

print("Estadísticas de la clase:")
print("-" * 50)
print("Número de aprobados en evaluación continua: {}".format(aprobados_continua))
print("Número de reprobados en evaluación continua: {}".format(reprobados_continua))
print("Número de aprobados en evaluación final: {}".format(aprobados_final))
print("Número de reprobados en evaluación final: {}".format(reprobados_final))
print("% de alumnos con más de 7 faltas: {:.2f}%".format(porcentaje))
print("Lista de alumnos con nota mayor a 90 puntos: {}".format(alta))
print("Lista de alumnos con nota entre 60 a 90: {}".format(media))
print("Lista de alumnos con nota menor a 60: {}".format(baja))

