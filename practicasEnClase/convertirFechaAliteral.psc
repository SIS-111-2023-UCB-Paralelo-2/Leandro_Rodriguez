Algoritmo convertirFechaAliteral
	//Definir las variables 
	Definir fecha Como Caracter
	Definir dia, mes, año Como cadena
	Definir fechaenNumero Como Cadena
	Definir mesLiteral Como cadena

	//Pedir la fecha en formato dd-mm-aaaa
	Escribir "Ingrese el día en número"
	Leer dia
	Escribir "Ingrese el mes en número"
	Leer mes
	Escribir "Ingrese el años en número"
	Leer año

	
	//Separar el día, mes y año
	dia <- SubCadena(fechaenLetras, 1, 2)
	mes <- SubCadena(fechaenletras, 4, 2)
	año <- SubCadena(fechaenLetras, 7, 4)
	
	//Convertir el mes de numero a texto literal
	Segun mesLiteral Hacer
		01: mesLiteral <- "Enero"
		02: mesLiteral <- "Febrero"
		03: mesLiteral <- "Marzo"
		04: mesLiteral <- "Abril"
		05: mesLiteral <- "Mayo"
		06: mesLiteral <- "Junio"
		07: mesLiteral <- "Julio"
		08: mesLiteral <- "Agosto"
		09: mesLiteral <- "Septiembre"
		10: mesLiteral <- "Octubre"
		11: mesLiteral <- "Noviembre"
		12: mesLiteral <- "Dicienbre"
	FinSegun
	
	//Mostrar fecha en formato literal
	Escribir dia "día",  mesLiteral "del" año
	
FinAlgoritmo
