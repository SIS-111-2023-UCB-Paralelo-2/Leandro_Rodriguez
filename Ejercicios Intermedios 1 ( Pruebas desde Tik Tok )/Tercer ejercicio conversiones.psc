Algoritmo conversiones
	Definir opcion, decimal, residuo, potencia, digito Como Entero
	
	Escribir "Presione 1 para comenzar"
	Leer opcion
	
	Si opcion = 1 Entonces
		Escribir "Convertir de binario a decimal"
		Escribir "Ingrese un número binario:"
		Leer binario
		decimal = 0
		potencia = 0
		Para i = Longitud(binario) Hasta 1 Con Paso -1 Hacer
			digito = ConvertirANumero(Subcadena(binario, i, 1))
			decimal = decimal + digito * 2^potencia
			potencia = potencia + 1
		FinPara
		Escribir "El número en decimal es:", decimal
	Sino
		Escribir "Opción inválida."
	FinSi
	
FinAlgoritmo
