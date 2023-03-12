Funcion mesEscrito <- Mees(mes)
	Segun mes  Hacer
		'01':
			mesEscrito <- 'Enero'
		'02':
			mesEscrito <- 'Febrero'
		'03':
			mesEscrito <- 'Marzo'
		'04':
			mesEscrito <- 'Abril'
		'05':
			mesEscrito <- 'Mayo'
		'06':
			mesEscrito <- 'Junio'
		'07':
			mesEscrito <- 'Julio'
		'08':
			mesEscrito <- 'Agosto'
		'09':
			mesEscrito <- 'Septiembre'
		'10':
			mesEscrito <- 'Octubre'
		'11':
			mesEscrito <- 'Noviembre'
		'12':
			mesEscrito <- 'Diciembre'
	FinSegun
FinFuncion

Funcion diaNumero <- diaDeCadaMes(mes,diaNumero)
	Si mes='01' O mes='03' O mes='05' O mes='07' O mes='08' O mes='10' O mes='12' Entonces
		Si diaNumero>0 Y diaNumero<32 Entonces
			diaNumero <- diaNumero
		SiNo
			Escribir 'El día ingresado no es válido.'
		FinSi
	SiNo
		Si mes='04' O mes='06' O mes='09' O mes='11' Entonces
			Si diaNumero>0 Y diaNumero<31 Entonces
				diaNumero <- diaNumero
			SiNo
				Escribir 'El día ingresado no es válido.'
			FinSi
		SiNo
			Si mes='02' Entonces
				Si diaNumero>0 Y diaNumero<29 Entonces
					diaNumero <- diaNumero
				SiNo
					Escribir 'El día ingresado no es válido'
				FinSi
			SiNo
				Escribir 'El mes ingresado no es válido.'
			FinSi
		FinSi
	FinSi
FinFuncion

Algoritmo fechaALiteral
	Definir fecha,dia,mes,year,mesLieral Como Caracter
	Definir diaNumero Como Entero
	Escribir 'Indique una fecha en el siguiente formato: dd-mm-aaaa'
	Leer fecha
	dia <- Subcadena(fecha,1,2)
	mes <- Subcadena(fecha,4,5)
	year <- Subcadena(fecha,7,10)
	diaNumero <- ConvertirANumero(dia)
	mesLieral <- Mees(mes)
	diaNumero <- diaDeCadaMes(mes,diaNumero)
	Si diaNumero<>-1 Entonces
		Escribir 'La fecha ingresada es: ',diaNumero,' de ',mesLieral,' del ',year
	FinSi
FinAlgoritmo
