import random
import math
import tkinter as tk

ventana = tk.Tk()
ventana.geometry("400x300")
ventana.title("Calculadora Científica")
def sumar():
    ecuacion = int(entrada1.get()) + int(entrada2.get()) + int(entrada3.get())
    etiqueta["text"] = f"Suma: {ecuacion}"
    etiqueta2["text"] = f"Raíz cuadrada: {raiz_cuadrada(ecuacion)}"
def restar():
    ecuacion = int(entrada1.get()) - int(entrada2.get()) - int(entrada3.get())
    etiqueta["text"] = f"Resta: {ecuacion}"
    etiqueta2["text"] = ""
def numero_mayor():
    numero1 = int(entrada1.get())
    numero2 = int(entrada2.get())
    numero3 = int(entrada3.get())
    if ((numero1 > numero2) and (numero1 > numero3)):
        mayor = numero1
    elif ((numero2 > numero1) and (numero2 > numero3)):
        mayor = numero2
    else:
        mayor = numero3
    etiqueta["text"] = f"Mayor: {mayor}"
    etiqueta2["text"] = f"Raíz cuadrada: {raiz_cuadrada(mayor)}"
def raiz_cuadrada(valor):
    return round(math.sqrt(valor), 2)
def aleatorio():
    operaciones = [sumar, restar, numero_mayor]
    random.choice(operaciones)()
#---------------------------------------------------------------------------------------
entrada1 = tk.Entry(ventana, width=10, font=("Arial", 12), justify="center")
entrada1.grid(row=0, column=0, padx=10, pady=10)
entrada2 = tk.Entry(ventana, width=10, font=("Arial", 12), justify="center")
entrada2.grid(row=0, column=1, padx=10, pady=10)
entrada3 = tk.Entry(ventana, width=10, font=("Arial", 12), justify="center")
entrada3.grid(row=0, column=2, padx=10, pady=10)
tk.Label(ventana, text="Calculadora Científica", font=("Algerian", 16)).grid(row=1, columnspan=3)
boton_sumar = tk.Button(ventana, text="Sumar", width=8, height=2, command=sumar, bg="#ffffff", fg="#000000")
boton_sumar.grid(row=2, column=0, padx=10, pady=10)
boton_restar = tk.Button(ventana, text="Restar", width=8, height=2, command=restar, bg="#ffffff", fg="#000000")
boton_restar.grid(row=2, column=1, padx=10, pady=10)
boton_numero_mayor = tk.Button(ventana, text="Mayor", width=8, height=2, command=numero_mayor, bg="#ffffff", fg="#000000")
boton_numero_mayor.grid(row=2, column=2, padx=10, pady=10)
boton_aleatorio = tk.Button(ventana, text="Operación aleatoria", width=15, height=2, command=aleatorio, bg="#000000", fg="#ffffff")
boton_aleatorio.grid(row=3, columnspan=3, padx=10, pady=10)
etiqueta = tk.Label(ventana, text="", font=("Times new roman", 15))
etiqueta.grid(row=4, columnspan=3, pady=10)
etiqueta2 = tk.Label(ventana, text="", font=("Times new roman", 15))
etiqueta2.grid(row=5, columnspan=3)

ventana.mainloop()
