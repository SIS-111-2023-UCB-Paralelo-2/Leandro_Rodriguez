Algoritmo IdentificarMayorEdad
	
    // Ingreso de datos
    Escribir "Ingrese su nombre:"
    Leer nombre
    Escribir "Ingrese su edad:"
    Leer edad
    
    // Verificación de la mayoría de edad
    Si edad >= 18 Entonces
        Escribir "Es mayor de edad, puede ingresar :D."
    Sino
        Escribir "Es menor de edad."
        Escribir "¿Está acompañada por un adulto? (S/N)"
        Leer acompanado
        Si acompanado = "S" Entonces
            Escribir "¿El adulto que acompaña es un familiar cercano? (S/N)"
            Leer familiar
            Si familiar = "S" Entonces
                Escribir "Puede ingresar a la discoteca acompañada por un adulto."
            Sino
                Escribir "No puede INGRESAR a la discoteca sin un adulto familiar cercano."
            Fin Si
        Sino
            Escribir "¿Tiene algún documento que confirme su edad? (S/N)"
            Leer confirme
            Si confirme = "S" Entonces
                Escribir "Puede ingresar a la discoteca :D."
            Sino
                Escribir "NO PUEDE INGRESAR a la discoteca sin un adulto acompañante o sin un documento que confirme su edad D:."
            Fin Si
        Fin Si
    Fin Si
	
Fin Algoritmo
