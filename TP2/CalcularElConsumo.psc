Algoritmo CalcularElConsumo
	
    // Solicitar al usuario la cantidad de combustible cargada y los kilómetros recorridos
    Escribir "Ingrese la cantidad de litros de combustible cargados: "
    Leer litrosCargados
	
    Escribir "Ingrese la cantidad de kilómetros recorridos: "
    Leer kmRecorridos
	
    // Calcular el consumo de combustible
    consumo = kmRecorridos / litrosCargados
	
    // Mostrar el resultado al usuario
    Escribir "El consumo de combustible es de ", consumo, " km/l"
	
FinAlgoritmo
