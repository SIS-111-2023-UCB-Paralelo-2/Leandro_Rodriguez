Algoritmo BoletaPagoDocentes
	
    // Definir variables de entrada
    Definir Nombre, CI, Cargo Como Cadena
    Definir Sueldo, HorasTrabajadas, AniosAntiguedad Como Entero
	Definir Mes Como Caracter
    // Definir variables de salida
    Definir HaberBasico, BonoAntiguedad, TotalIngresos Como Real
    Definir DescuentoAfp, TotalDescuentos Como Real
    Definir LiquidoPagable Como Real
	
    // Leer datos de entrada
    Escribir "Ingrese el nombre del docente:"
    Leer Nombre
    Escribir "Ingrese el número de cédula de identidad del docente:"
    Leer CI
    Escribir "Ingrese el cargo del docente:"
    Leer Cargo
    Escribir "Ingrese el sueldo del docente:"
    Leer Sueldo
    Escribir "Ingrese el número de horas trabajadas en el mes:"
    Leer HorasTrabajadas
    Escribir "Ingrese el mes de pago:"
    Leer Mes
    Escribir "Ingrese el número de años de antigüedad del docente:"
    Leer añosAntiguedad
	
    // Calcular los ingresos del docente
    HaberBasico <- Sueldo
    BonoAntiguedad <- 0
	
    si añosAntiguedad >= 1 entonces
		si añosAntiguedad >= 2 entonces
			si añosAntiguedad >= 3 entonces
				si añosAntiguedad >= 4 entonces
					bonoAntiguedad = 230.40
				sino
					bonoAntiguedad = 172.80
				fin si
			sino
				bonoAntiguedad = 115.20
			fin si
		sino
			bonoAntiguedad = 57.60
		fin si
	sino
		bonoAntiguedad = 0
	fin si
	
    TotalIngresos <- HaberBasico + BonoAntiguedad
	
    // Calcular los descuentos
    DescuentoAfp <- 0.11 * HaberBasico
	
    TotalEgresos <- DescuentoAfp
	
    // Calcular el neto a pagar
    LiquidoPagable <- TotalIngresos - TotalEgresos
	
    // Imprimir la boleta de pago
    Escribir "--------------------------------"
	Escribir "UNIVERSIDAD CATÓLICA BOLIVIANA"
	Escribir "--------------------------------"
	Escribir "BOLETA DE PAGO - " Mes
    Escribir "Nombre: " Nombre
    Escribir "CI: " CI
    Escribir "Cargo: " Cargo
    Escribir "Sueldo: " Sueldo
    Escribir "Horas trabajadas: " HorasTrabajadas
    Escribir "Haber básico: " HaberBasico
    Escribir "Bono de antigüedad: " BonoAntiguedad
	Escribir "Total de egresos: "  TotalEgresos "Bs"
    Escribir "Total de ingresos: " TotalIngresos "Bs"
    Escribir "Descuento AFP: " DescuentoAfp
    Escribir "Liquido Pagable: " LiquidoPagable
FinAlgoritmo
