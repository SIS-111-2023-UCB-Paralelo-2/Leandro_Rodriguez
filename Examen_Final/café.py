def vender_cafe():
    stock_tazas = 300
    capacidad_taza = 150  
    precio_cafe = 5  
    tazas_vendidas = 0
    litros_vendidos = 0
    monto_ganancia = 0
    monedas_1_bs = 0
    monedas_2_bs = 0
    monedas_5_bs = 0
    while True:
        num_usuarios = int(input("Ingrese el número de usuarios que desean comprar café: "))
        if num_usuarios <= 0:
            print("El número de usuarios debe ser mayor que cero.")
            continue
        for _ in range(num_usuarios):
            monto = 0
            while monto < precio_cafe:
                moneda = int(input("Ingrese el valor de la moneda (1, 2 o 5 Bs): "))
                if moneda == 1:
                    monedas_1_bs += 1
                    monto += 1
                elif moneda == 2:
                    monedas_2_bs += 1
                    monto += 2
                elif moneda == 5:
                    monedas_5_bs += 1
                    monto += 5
                else:
                    print("Valor de moneda inválido. Intente nuevamente.")
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
        print("Reporte final de caja:")
        print("Tazas de café vendidas:", tazas_vendidas)
        print("Litros de café vendidos:", litros_vendidos)
        print("Litros de café restantes:", stock_tazas * capacidad_taza / 1000)
        print("Monto en Bs de ganancia:", monto_ganancia)
        print("Monedas de 1 Bs en la máquina:", monedas_1_bs)
        print("Monedas de 2 Bs en la máquina:", monedas_2_bs)
        print("Monedas de 5 Bs en la máquina:", monedas_5_bs)
        break
vender_cafe()