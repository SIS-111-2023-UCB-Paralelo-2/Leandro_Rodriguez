def bonoAñoDeAntigüedad(añosAntiguedad):
    if añosAntiguedad >= 0 and añosAntiguedad < 2:
        porcentajeBono = 0
    elif añosAntiguedad >= 2 and añosAntiguedad < 4:
        porcentajeBono = 0.05
    elif añosAntiguedad >= 4 and añosAntiguedad < 8:
        porcentajeBono = 0.11
    elif añosAntiguedad >= 8 and añosAntiguedad < 11:
        porcentajeBono = 0.18
    elif añosAntiguedad >= 11 and añosAntiguedad < 15:
        porcentajeBono = 0.26
    elif añosAntiguedad >= 15 and añosAntiguedad < 20:
        porcentajeBono = 0.34
    elif añosAntiguedad >= 20 and añosAntiguedad < 25:
        porcentajeBono = 0.42
    elif añosAntiguedad >= 25:
        porcentajeBono = 0.5
    else:
        porcentajeBono = 0
    return porcentajeBono


def aporteNcionalSolidario(sueldo):
    if sueldo > 0 and sueldo <= 13000:
        aporteNS = sueldo * 0.005
    elif sueldo > 13000 and sueldo <= 25000:
        aporteNS = (sueldo - 13000) * 0.01
    elif sueldo > 25000 and sueldo <= 35000:
        aporteNS = ((sueldo - 13000) * 0.01) + ((sueldo - 25000) * 0.05)
    elif sueldo > 35000:
        aporteNS = ((sueldo - 13000) * 0.01) + ((sueldo - 25000) * 0.05) + ((sueldo - 35000) * 0.1)
    else:
        aporteNS = sueldo * 0.005
    return aporteNS


nombre = input("Nombre y Apellido: ")
cargo = input("Cargo real: ")
mes = input("Mes en el que se percibio el sueldo: ")
CI = input("Número de identificación (CI): ")
sueldo = float(input("Sueldo mensual: "))
horasTrabajadas = input("Horas trabajadas en el mes: ")
añosAntigüedad = int(input("Años de antigüedad: "))

afp = 0.1271
salarioMinimoNacional = 2250
haberBasico = sueldo
print("Escriba la cantidad de horas extras nocturnas trabajadas en días festivos o fines de semana.")
horasNocturnas = int(input())
print("Escriba la cantidad de horas extras diurnas trabajadas en días festivos o fines de semana.")
horasDiurnas = int(input())
bonoHorasExtra = (sueldo/30/8*horasNocturnas*2) + (sueldo/30/8*horasDiurnas*2.5)

print("Ingrese el monto de los bonos adicionales que recibe")
otrosBonosExtra = float(input())

print("¿Recibió bono de productividad? (1 = Sí, 0 = No)")
bonoProductividad = int(input())
if bonoProductividad == 1:
    sueldoBP = sueldo * 0.12GB                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      F
else:
    sueldoBP = 0

print("¿Cuántas multas tienes?")
multas = int(input())
if multas >= 1:
    sueldosmultas = sueldos / 100 * multas
else:
    sueldosmultas = 0

if sueldo > 9500:
    print("¿Cuánto monto tiene en facturas?")
    montoFacturas = float(input())
    if montoFacturas > sueldo:
        RCIVA = 0
    else:
        RCIVA = sueldo * 0.013
else:
    RCIVA = 0

bonoAntiguedad = (salarioMinimoNacional * 3) * bonoAñoDeAntiguedad(añosAntiguedad)

# Cálculo de los ingresos totales
ingresos = haberBasico + bonoAntiguedad + sueldoHorasExtra + sueldoBP + sueldoBonosExtra
# Cálculo del sueldo de egreso
Egreso = haberBasico * afp + aporteNS + sueldoMultas + RCIVA
# Cálculo del sueldo líquido pagadero
liquidoPagable = ingresos - Egreso

print("======================================")
print("| UNIVERSIDAD CATÓLICA BOLIVIANA |")
print("======================================")
print("BOLETA DE PAGO -", mes)
print("Nombre:", nombre)
print("CI:", CI)
print("Carga:", carga)
print("Sueldo:", sueldo, "Bs.")
print("Horas trabajadas:", horasTrabajadas, "Hrs. Normales,", horasDiurnas, "Hrs. Extras Diurnas y", horasNocturnas, "Hrs. Extras Nocturnas")
print("Haber básico:", haberBasico, "Bs.")
print("Bono de antigüedad:", bonoAntigüedad, "Bs.")
print("Bono de horas extras:", sueldoHorasExtra, "Bs.")
print("Bono de productividad:", sueldoBP, "Bs.")
print("Otros bonos:", sueldoBonosExtra, "Bs.")
print("Total de ingresos:", ingresos, "Bs.")
print("AFP:", afp, "%")
print("Aporte Nacional Solidario:", aporteNcionalSolidario(sueldo), "Bs.")
print("Descuento por multas:", sueldoMultas, "Bs.")
print("RC-IVA:", RCIVA, "Bs.")
print("Total de egresos:", Egreso, "Bs.")
print("Liquido pagable:", liquidoPagable, "Bs.")