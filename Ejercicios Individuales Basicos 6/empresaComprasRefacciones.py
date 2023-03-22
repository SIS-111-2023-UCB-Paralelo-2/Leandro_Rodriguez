monto_total = float(input("Ingrese el monto total de la compra: "))

if monto_total > 500000:
    dinero_invertido = monto_total * 0.55
    dinero_prestado = monto_total * 0.3
    dinero_credito = monto_total - dinero_invertido - dinero_prestado
    intereses = dinero_credito * 0.2
    print("La empresa invertirá Bs.", dinero_invertido, "de su propio dinero.")
    print("La empresa pedirá prestado al banco Bs.", dinero_prestado)
    print("La empresa solicitará a crédito al fabricante Bs.", dinero_credito, "con un interés del 20% (Bs.", intereses, "en intereses).")
else:
    dinero_invertido = monto_total * 0.7
    dinero_credito = monto_total - dinero_invertido
    intereses = dinero_credito * 0.2
    print("La empresa invertirá Bs.", dinero_invertido, "de su propio dinero.")
    print("La empresa solicitará a crédito al fabricante Bs.", dinero_credito, "con un interés del 20% (Bs.", intereses, "en intereses).")
