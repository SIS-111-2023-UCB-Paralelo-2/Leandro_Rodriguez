def clasificarJubiladosIVSS():
    edad = int(input("Ingrese la edad de la persona: "))
    antiguedad = int(input("Ingrese la antigüedad en su empleo (en años): "))
    if edad >= 60:
        if antiguedad < 25:
            tipo_jubilacion = "edad"
        else:
            tipo_jubilacion = "antiguedad adulta"
    else:
        if antiguedad >= 25:
            tipo_jubilacion = "antiguedad joven"
        else:
            tipo_jubilacion = "no cumple con los requisitos para jubilarse"
    print(f"La persona se jubilará por {tipo_jubilacion}.")

clasificar_jubilados_IVSS()