Algoritmo empresaComprasRefacciones
    Definir monto_total, dinero_invertido, dinero_prestado, dinero_credito, intereses Como Real
    
    Escribir "Ingrese el monto total de la compra: "
    Leer monto_total
    
    Si monto_total > 500000 Entonces
        dinero_invertido <- monto_total * 0.55
        dinero_prestado <- monto_total * 0.3
        dinero_credito <- monto_total - dinero_invertido - dinero_prestado
        intereses <- dinero_credito * 0.2
        Escribir "La empresa invertirá Bs.", dinero_invertido, "de su propio dinero."
        Escribir "La empresa pedirá prestado al banco Bs.", dinero_prestado
        Escribir "La empresa solicitará a crédito al fabricante Bs.", dinero_credito, "con un interés del 20% (Bs.", intereses, "en intereses)."
    Sino
        dinero_invertido <- monto_total * 0.7
        dinero_credito <- monto_total - dinero_invertido
        intereses <- dinero_credito * 0.2
        Escribir "La empresa invertirá Bs.", dinero_invertido, "de su propio dinero."
        Escribir "La empresa solicitará a crédito al fabricante Bs.", dinero_credito, "con un interés del 20% (Bs.", intereses, "en intereses)."
    FinSi
FinAlgoritmo
