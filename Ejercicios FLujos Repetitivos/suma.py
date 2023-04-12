def FuncionMientras(numero):
    x=0
    sumatoria=0
    while=(x<numero):
        sumatoria=sumatoria+x
        x=x+1
    return sumatoria
def funcionPara(numero):
    sumatoria=0
    for x in range(0,numero):
        sumatoria=sumatoria+x
        x=x+1
    return sumatoria

numero=int(input("limite de numero para sumar"))
opcion=int(input("Escoja una opcion 1. mientras; 2. repetir; 3. para"))

if opcion == 1:
    print(sumatoria)
elif opcion == 2:
    print(sumatoria)
elif opcion == 3:
    print(sumatoria)