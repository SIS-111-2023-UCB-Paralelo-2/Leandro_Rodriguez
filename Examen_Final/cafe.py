def vender_cafe():
    stock_tazas = 300
    capacidad_taza = 150  
    precio_cafe = 5  
    tazas_vendidas = 0
    litros_vendidos = 0
    monto_ganancia = 0
    monedas = [0, 0, 0]  
    def calcular_monto(monedas):
        return monedas[0] * 1 + monedas[1] * 2 + monedas[2] * 5
    def imprimir_reporte_final():
        print("Reporte final de caja:")
        print("Tazas de café vendidas:", tazas_vendidas)
        print("Litros de café vendidos:", litros_vendidos)
        print("Litros de café restantes:", stock_tazas * capacidad_taza / 1000)
        print("Monto en Bs de ganancia:", monto_ganancia)
        print("Monedas de 1 Bs en la máquina:", monedas[0])
        print("Monedas de 2 Bs en la máquina:", monedas[1])
        print("Monedas de 5 Bs en la máquina:", monedas[2])
    while True:
        num_usuarios = int(input("Ingrese el número de usuarios que desean comprar café: "))
        if num_usuarios <= 0:
            print("El número de usuarios debe ser mayor que cero.")
            continue
        for _ in range(num_usuarios):
            monto = 0
            monto_ingresado = 0
            while monto < precio_cafe:
                moneda = int(input("Ingrese el valor de la moneda (1, 2 o 5 Bs): "))
                if moneda == 1:
                    monedas[0] += 1
                    monto += 1
                elif moneda == 2:
                    monedas[1] += 1
                    monto += 2
                elif moneda == 5:
                    monedas[2] += 1
                    monto += 5
                else:
                    print("Valor de moneda inválido. Intente nuevamente.")
            monto_ingresado += monto
            if monto_ingresado > precio_cafe:
                cambio = monto_ingresado - precio_cafe
                print("Cambio:", cambio, "Bs")
                monedas_devueltas = [0, 0, 0]
                while cambio > 0:
                    if cambio >= 5 and monedas[2] > 0:
                        monedas_devueltas[2] += 1
                        cambio -= 5
                        monedas[2] -= 1
                    elif cambio >= 2 and monedas[1] > 0:
                        monedas_devueltas[1] += 1
                        cambio -= 2
                        monedas[1] -= 1
                    elif cambio >= 1 and monedas[0] > 0:
                        monedas_devueltas[0] += 1
                        cambio -= 1
                        monedas[0] -= 1
                    else:
                        break
                print("Monedas devueltas:")
                print("Monedas de 1 Bs:", monedas_devueltas[0])
                print("Monedas de 2 Bs:", monedas_devueltas[1])
                print("Monedas de 5 Bs:", monedas_devueltas[2])
            if stock_tazas > 0:
                print("Procesando café...")
                stock_tazas -= 1
                tazas_vendidas += 1
                litros_vendidos += capacidad_taza / 1000
                monto_ganancia += precio_cafe
                print("Café servido.")
            else:
                print("Lo sentimos, no hay tazas de café disponibles.")
                break
        imprimir_reporte_final()
        break
vender_cafe()
