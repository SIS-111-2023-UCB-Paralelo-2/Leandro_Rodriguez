Algoritmo BoletaPagoDocentesssss
	Definir nombre,cargo,mes,CI,horasTrabajadas Como Caracter
	Definir sueldo,añosAntiguedad,Egreso,ingresos,liquidoPagable Como Real
	Definir bonoAntiguedad,otrosBonosExtra,sueldoBP,bonoHorasExtra,afp,RCIVA Como Real
	Definir haberBasico,sueldoBonosExtra,aporteNS,bonoProductividad Como Real
	Definir gestionIngreso,salarioMinimoNacional,horasDiurnas,horasNocturnas Como Entero 
	Escribir "================================================="
	Escribir "   Por favor ingrese la siguiente información:"
	Escribir "================================================="
	Escribir "Nombre y Apellido:"
	Leer nombre
	Escribir "Cargo actual:"
	Leer cargo
	Escribir "Mes en el que se percibe el sueldo:"
	Leer mes
	Escribir "Número de identificación (CI):"
	Leer CI
	Escribir "Sueldo mensual:"
	Leer sueldo
	Escribir "Horas trabajadas en el mes:"
	Leer horasTrabajadas
	Escribir "Años de antigüedad:"
	Leer añosAntiguedad

	afp=0.1271
	salarioMinimoNacional=2250
	haberBasico=sueldo
	
	Escribir "Escriba la cantidad de horas extras nocturnas trabajadas en días festivos o fines de semana."
	Leer horasNocturnas
	Escribir "Escriba la cantidad de horas extras diurnas trabajadas en días festivos o fines de semana."
	Leer horasDiurnas
	bonoHorasExtra=(sueldo/30/8*horasNocturnas*2)+(sueldo/30/8*horasDiurnas*2.5)
	
	Escribir "Ingrese el monto de los bonos adicionales que recibe"
	Leer otrosBonosExtra
	
	Escribir "¿Recibió bono de productividad? (1 = Sí, 0 = No)"
	Leer bonoProductividad
	Si bonoProductividad = 1 Entonces
		sueldoBP = sueldo * 0.1
	SiNo
		sueldoBP = 0
	Fin Si
	
	Si añosAntiguedad>=0 y añosAntiguedad<2 Entonces
		porcentajeBono=0
	SiNo
		Si añosAntiguedad>=2 y añosAntiguedad<4 Entonces
			porcentajeBono=0.05
		SiNo
			Si añosAntiguedad>=4 y añosAntiguedad<8 Entonces
				porcentajeBono=0.11
			SiNo
				Si añosAntiguedad>=8 y añosAntiguedad<11 Entonces
					porcentajeBono=0.18
				SiNo
					Si añosAntiguedad>=11 y añosAntiguedad<15 Entonces
						porcentajeBono=0.26
					SiNo
						Si añosAntiguedad>=15 y añosAntiguedad<20 Entonces
							porcentajeBono=0.34
						SiNo
							Si añosAntiguedad>=20 y añosAntiguedad<25 Entonces
								porcentajeBono=0.42
							SiNo
								Si añosAntiguedad>=25 Entonces
									porcentajeBono=0.5
								SiNo
									porcentajeBono=0
								Fin Si
							Fin Si
						Fin Si
					Fin Si
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
	Si sueldo>0 y sueldo<=13000 Entonces
		aporteNS=sueldo*0.005
	SiNo
		Si sueldo>13000 y sueldo<=25000 Entonces
			aporteNS=(sueldo-13000)*0.01
		SiNo
			Si sueldo>25000 y sueldo<=35000 Entonces
				aporteNS=((sueldo-13000)*0.01)+((sueldo-25000)*0.05)
			SiNo
				Si sueldo>35000 Entonces
					aporteNS=((sueldo-13000)*0.01)+((sueldo-25000)*0.05)+((sueldo-35000)*0.1)
				SiNo
					aporteNS=sueldo*0.005
				Fin Si
			Fin Si
		Fin Si
	Fin Si

	Escribir "¿Cuántas multas tienes?"
	Leer multas
	
	Si multas >= 1 Entonces
		sueldoMultas = sueldo / 100 * multas
	SiNo
		sueldoMultas = 0
	Fin Si
	
	Si sueldo>9500 Entonces
		Escribir "¿Cuanto monto tiene en facturas?"
		Leer montoFacturas
		Si montoFacturas>sueldo Entonces
			RCIVA=0
		SiNo
			RCIVA=sueldo*0.13
		Fin Si
	SiNo
		RCIVA=0 
	Fin Si
	
	bonoAntiguedad=(salarioMinimoNacional*3)*porcentajeBono

	// Cálculo de los ingresos totales
	ingresos = haberBasico + bonoAntiguedad + sueldoHorasExtra + sueldoBP + sueldoBonosExtra
	// Cálculo del sueldo de egreso
	Egreso = haberBasico * afp + aporteNS + sueldoMultas + RCIVA
	// Cálculo del sueldo líquido pagable
	liquidoPagable = ingresos - Egreso
	
	Escribir "=================================================="
	Escribir "|          UNIVERSIDAD CATÓLICA BOLIVIANA         |"
	Escribir "=================================================="
	Escribir "BOLETA DE PAGO - ", mes
	Escribir "Nombre: ", nombre
	Escribir "CI: ", CI
	Escribir "Cargo: ", cargo
	Escribir "Sueldo: ", sueldo, " Bs."
	Escribir "Horas trabajadas: ", horasTrabajadas, " Hrs. Normales, ", horasDiurnas, " Hrs. Extras Diurnas y ", horasNocturnas, " Hrs. Extras Nocturnas"
	Escribir "Haber básico: ", haberBasico, " Bs."
	Escribir "Bono de antigüedad: ", bonoAntiguedad, " Bs."
	Escribir "Bono de horas extras: ", sueldoHorasExtra, " Bs."
	Escribir "Bono de productividad: ", sueldoBP, " Bs."
	Escribir "Otros bonos: ", sueldoBonosExtra, " Bs."
	Escribir "Total de ingresos: ", ingresos, " Bs."
	Escribir "AFP: ", afp, "%"
	Escribir "Aporte Nacional Solidario: ", aporteNS, " Bs."
	Escribir "Descuento por multas: ", sueldoMultas, " Bs."
	Escribir "RC-IVA: ", RCIVA, " Bs."
	Escribir "Total de egresos: ", Egreso, " Bs."
	Escribir "Liquido pagable: ", liquidoPagable, " Bs."

FinAlgoritmo
