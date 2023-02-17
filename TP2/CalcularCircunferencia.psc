Algoritmo CalcularCircunferencia
	
	Definir radio, area, perimetro, númPi Como Real
	
	Escribir "Ingrese el valor del radio de la circunferencia:"
	Leer radio
	
	númPi <- 3.14159265359
	
	area <- númPi * radio^2
	perimetro <- 2 * númPi * radio
	
	Escribir "El área de la circunferencia es:", area, " unidades cuadradas"
	Escribir "El perímetro de la circunferencia es:", perimetro, " unidades"
	
FinAlgoritmo
