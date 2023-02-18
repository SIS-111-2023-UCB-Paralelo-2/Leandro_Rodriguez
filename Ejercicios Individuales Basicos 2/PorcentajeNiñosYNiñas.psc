Algoritmo PorcentajeNiñosYNiñas
	
	// Declarar variables
	Definir cantidad_ninos Como Entero
	Definir cantidad_ninas Como Entero
	Definir total_estudiantes Como Entero
	Definir porcentaje_ninos Como Real
	Definir  porcentaje_ninas Como Real
	
	// Leer cantidad de niños y niñas
	Escribir "Ingrese la cantidad de niños en el curso:"
	Leer cantidad_ninos	
	Escribir "Ingrese la cantidad de niñas en el curso:"
	Leer cantidad_ninas

	// Calcular total de estudiantes
	total_estudiantes <- cantidad_ninos + cantidad_ninas
	
	// Calcular porcentaje de niños y niñas
	porcentaje_ninos <- (cantidad_ninos * 100) / total_estudiantes	
	porcentaje_ninas <- (cantidad_ninas * 100) / total_estudiantes
	
	// Mostrar porcentaje de niños y niñas
	Escribir "Porcentaje de niños: " redon(porcentaje_ninos),"%"
	Escribir "Porcentaje de niñas: " redon(porcentaje_ninas),"%"

FinAlgoritmo
