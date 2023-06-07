import tkinter as tk
class MaquinaExpendedoraCafeGUI:
    def __init__(self):
        self.stock_tazas = 300
        self.capacidad_litros = self.stock_tazas * 0.15
        self.tazas_vendidas = 0
        self.litros_vendidos = 0.0
        self.monto_ganancia = 0
        self.moneda_1_bs = 0
        self.moneda_2_bs = 0
        self.moneda_5_bs = 0
        self.ventana = tk.Tk()
        self.ventana.title("Máquina Expendedora de Café")
        self.etiqueta_tazas = tk.Label(self.ventana, text="Stock de tazas: {}".format(self.stock_tazas))
        self.etiqueta_tazas.pack()
        self.etiqueta_litros = tk.Label(self.ventana, text="Stock de café (litros): {:.2f}".format(self.capacidad_litros))
        self.etiqueta_litros.pack()
        self.etiqueta_monto = tk.Label(self.ventana, text="Ganancia (Bs): {}".format(self.monto_ganancia))
        self.etiqueta_monto.pack()
        self.etiqueta_moneda_1bs = tk.Label(self.ventana, text="Monedas de 1 Bs: {}".format(self.moneda_1_bs))
        self.etiqueta_moneda_1bs.pack()
        self.etiqueta_moneda_2bs = tk.Label(self.ventana, text="Monedas de 2 Bs: {}".format(self.moneda_2_bs))
        self.etiqueta_moneda_2bs.pack()
        self.etiqueta_moneda_5bs = tk.Label(self.ventana, text="Monedas de 5 Bs: {}".format(self.moneda_5_bs))
        self.etiqueta_moneda_5bs.pack()
        self.boton_comprar = tk.Button(self.ventana, text="Comprar café", command=self.procesar_compra)
        self.boton_comprar.pack()
        self.boton_reporte = tk.Button(self.ventana, text="Generar Reporte", command=self.generar_reporte)
        self.boton_reporte.pack()
        self.ventana.mainloop()
    def procesar_compra(self):
        monto_ingresado = 5
        cambio = monto_ingresado - 5
        if cambio < 0:
            mensaje = "Monto insuficiente. Debe ingresar 5 bs."
        else:
            self.monto_ganancia += 5
            self.tazas_vendidas += 1
            self.litros_vendidos += 0.15
            self.stock_tazas -= 1
            # Calcular cambio
            while cambio > 0:
                if cambio >= 5 and self.moneda_5_bs > 0:
                    cambio -= 5
                    self.moneda_5_bs -= 1
                elif cambio >= 2 and self.moneda_2_bs > 0:
                    cambio -= 2
                    self.moneda_2_bs -= 1
                elif cambio >= 1 and self.moneda_1_bs > 0:
                    cambio -= 1
                    self.moneda_1_bs -= 1
                else:
                    mensaje = "No se puede dar cambio exacto."
                    break
            else:
                mensaje = "Disfrute su café."
        self.actualizar_etiquetas()
        self.mostrar_mensaje(mensaje)
    def generar_reporte(self):
        saldo_litros = self.capacidad_litros - self.litros_vendidos
        reporte = "Reporte Final:\n"
        reporte += "Tazas de café vendidas: {}\n".format(self.tazas_vendidas)
        reporte += "Litros de café vendidos: {:.2f} litros\n".format(self.litros_vendidos)
        reporte += "Saldo de café: {:.2f} litros\n".format(saldo_litros)
        reporte += "Ganancia total: {} bs\n".format(self.monto_ganancia)
        reporte += "Monedas de 1 bs en la máquina: {}\n".format(self.moneda_1_bs)
        reporte += "Monedas de 2 bs en la máquina: {}\n".format(self.moneda_2_bs)
        reporte += "Monedas de 5 bs en la máquina: {}\n".format(self.moneda_5_bs)
        self.mostrar_mensaje(reporte)
    def actualizar_etiquetas(self):
        self.etiqueta_tazas.config(text="Stock de tazas: {}".format(self.stock_tazas))
        self.etiqueta_litros.config(text="Stock de café (litros): {:.2f}".format(self.capacidad_litros))
        self.etiqueta_monto.config(text="Ganancia (Bs): {}".format(self.monto_ganancia))
        self.etiqueta_moneda_1bs.config(text="Monedas de 1 Bs: {}".format(self.moneda_1_bs))
        self.etiqueta_moneda_2bs.config(text="Monedas de 2 Bs: {}".format(self.moneda_2_bs))
        self.etiqueta_moneda_5bs.config(text="Monedas de 5 Bs: {}".format(self.moneda_5_bs))
    def mostrar_mensaje(self, mensaje):
        ventana_mensaje = tk.Toplevel(self.ventana)
        ventana_mensaje.title("Mensaje")
        etiqueta_mensaje = tk.Label(ventana_mensaje, text=mensaje)
        etiqueta_mensaje.pack()
        boton_ok = tk.Button(ventana_mensaje, text="OK", command=ventana_mensaje.destroy)
        boton_ok.pack()
# Ejemplo de uso
maquina_gui = MaquinaExpendedoraCafeGUI()
