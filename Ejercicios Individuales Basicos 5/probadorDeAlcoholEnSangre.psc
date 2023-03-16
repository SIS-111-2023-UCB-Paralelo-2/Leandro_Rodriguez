Funcion tasa <- TasaMaxima ( maximaTas,nivelAlcohol )
	Si maximaTas=0 Entonces
		Escribir "Debe seleccionar un vehiculo valido primero."
	SiNo
		Si nivelAlcohol<maximaTas Entonces
			Escribir "El alcoholimetro dice: NEGATIVO"
		SiNo
			Si nivelAlcohol>=0.3 Y nivelAlcohol<0.4 Entonces
				Escribir "El alcoholimetro dice: POSITIVO."
			SiNo
				Si nivelAlcohol>=0.4 Y nivelAlcohol<0.5 Entonces
					Escribir "El alcoholimetro dice: POSITIVO."
				SiNo
					Si nivelAlcohol>=0.5 Y nivelAlcohol<0.6 Entonces
						Escribir "El alcoholimetro dice: POSITIVO."
					SiNo
						Si nivelAlcohol>=0.60 Entonces
							Escribir "El alcoholimetro dice: POSITIVO, Posible paro respiratorio o muerte."
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
Fin Funcion

Funcion maximaTas <- TipoDeVehiculo (vehiculo)
	Segun vehiculo Hacer
		"c"o"C":
			tasaMax=0.3
		"A"o"a":
			tasaMax=0.3
		"T"o"t":
			tasaMax=0.5
		"M"o"m":
			tasaMax=0.3
		De Otro Modo:
			Escribir "Comando Invalido"
	Fin Segun
Fin Funcion

Algoritmo probadorDeAlcoholEnSangre
	Definir vehiculo Como Caracter
	Definir nivelAlcohol,maximaTas Como Real
	Escribir "¡Bienvenido al Medidor de Alcoholemia de la Dirección General de Tráfico!"
	Escribir "Este programa te ayudará a determinar si el conductor de un vehículo ha superado la tasa de alcohol permitida por ley."
	Escribir "Por favor, ingrese la letra correspondiente al vehículo y el nivel de alcohol en sangre para continuar."
	Escribir ""
	Escribir "Ingrese la letra correspondiente al vehiculo deseado."
	Escribir "Camión = C"
	Escribir "Autobús = A"
	Escribir "Turismo = T"
	Escribir "Motocicleta = M"
	Leer vehiculo
	maximaTas=TipoDeVehiculo(vehiculo)
	Escribir "Ingrese el nivel de alcohol en sangre."
	Leer nivelAlcohol
	tasa=TasaMaxima(tasaMax,nivelAlcohol)
FinAlgoritmo
