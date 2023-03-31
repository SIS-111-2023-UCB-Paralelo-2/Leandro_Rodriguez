def FuncionColesterolTotal(colesterolHDL, colesterolLDL, colesterolVLDL):
    colesterolTotal = colesterolHDL + colesterolLDL + colesterolVLDL
    if colesterolTotal <= 200:
        variableColesterolTotal = "Tu colesterol total es óptimo"
    elif colesterolTotal > 200 and colesterolTotal <= 240:
        variableColesterolTotal = "Tu colesterol total está sobre el límite óptimo"
    elif colesterolTotal > 240:
        variableColesterolTotal = "Tu colesterol total es muy alto"
    return variableColesterolTotal

def FuncionColesterolVLDL(colesterolVLDL):
    if colesterolVLDL >= 2 and colesterolVLDL <= 30:
        variableColesterolVLDL = "Tu nivel de VLDL-Colesterol es óptimo"
    elif colesterolVLDL > 30:
        variableColesterolVLDL = "Tu nivel de VLDL-Colesterol es perjudicial"
    return variableColesterolVLDL

def FuncionColesterolLDL(colesterolLDL):
    if colesterolLDL < 100:
        variableColesterolLDL = "Tu nivel de LDL-Colesterol es óptimo"
    elif colesterolLDL >= 100 and colesterolLDL <= 129:
        variableColesterolLDL = "Tu nivel de LDL-Colesterol está sobre el límite óptimo"
    elif colesterolLDL >= 130 and colesterolLDL <= 189:
        variableColesterolLDL = "Tu nivel de LDL-Colesterol es alto"
    elif colesterolLDL >= 190:
        variableColesterolLDL = "Tu nivel de LDL-Colesterol es muy alto"
    return variableColesterolLDL

def FuncionColesterolHDL(colesterolHDL):
    if colesterolHDL >= 40 and colesterolHDL <= 60:
        variableColesterolHDL = "Tu valor es óptimo"
    elif colesterolHDL > 60:
        variableColesterolHDL = "Tu HDL-Colesterol es beneficioso"
    return variableColesterolHDL

def proteína(prote):
    if prote <= 1.0:
        varProte = "Su porcentaje de proteína es óptimo"
    elif prote >= 1.0 and prote <= 2.9:
        varProte = "Su porcentaje de proteína está entre el límite de lo óptimo y alto"
    elif prote >= 3.0:
        varProte = "Su porcentaje de proteína es muy alto"
    return varProte

def Homocisteína(homo):
    if homo <= 2 and homo >= 15:
        varHomo = "Su porcentaje de Homocisteína es óptimo"
    elif homo >= 15 and homo <= 30:
        varHomo = "Su porcentaje de Homocisteína está al límite de lo óptimo"
    elif homo >= 30 and homo <= 100:
        varHomo = "Su porcentaje de Homocisteína es alto"
    elif homo >= 100:
        varHomo = "Su porcentaje de Homocisteína es muy alto"
    return varHomo
def trigliceride(trigli):
    if trigli <= 150:
        return "su porcentaje de triglicérina es óptimo"
    elif trigli <= 199:
        return "su porcentaje de triglicérina esta sobre el límite óptimo"
    elif trigli <= 499:
        return "su porcentaje de triglicérina es alto"
    else:
        return "su porcentaje de triglicérina es muy alto"

def apoliprotein(apoliproteinaNivelA1, apoliproteinaNivelB):
    if apoliproteinaNivelA1 == 130:
        return "Tu nivel de apoliproteina es optimo"
    elif apoliproteinaNivelA1 > 130:
        return "Tu nivel de apoliproteina es mas que optimo"
    if apoliproteinaNivelB < 90:
        return "Su nivel de apoliproteina B es optimo"
    elif apoliproteinaNivelB >= 90 and apoliproteinaNivelB < 115:
        return "Su nivel de apoliproteina B esta sobre el limite optimo"
    elif apoliproteinaNivelB >= 115 and apoliproteinaNivelB <= 140:
        return "Su nivel de apoliproteina B es Alto"
    else:
        return "Su nivel apoliproteina B es Desamiado alto"

print("Datos del paciente")
nombree = input("Ingrese su nombre: ")
colesterolHDL = float(input("Ingrese su valor de colesterolHDL: "))
colesterolLDL = float(input("Ingrese su valor de colesterolLDL: "))
colesterolVLDL = float(input("Ingrese su valor de colesterolVLDL: "))

print(FuncionColesterolTotal(colesterolHDL, colesterolLDL, colesterolVLDL))
print(FuncionColesterolVLDL(colesterolVLDL))
print(FuncionColesterolLDL(colesterolLDL))
print(FuncionColesterolHDL(colesterolHDL))

print("")
trigli = float(input("Ingrese la cantidad de triglicérina: "))
homo = float(input("Ingrese la cantidad de Homocisteína: "))
prote = float(input("Ingrese la cantidad de proteína C: "))

print(f"Resultados del paciente {nombree} sobre su triglicérido, Homocisteína y proteína: ")
print(trigliceride(trigli))
print(apoliprotein(homo, prote))
print("")

apoliproteinaNivelA1 = float(input("Ingrese su nivel de apoliproteina A-I: "))
apoliproteinaNivelB = float(input("Ingrese su nivel de apoliproteina B: "))

if apoliproteinaNivelA1 == 130:
    print("Tu nivel de apoliproteina es optimo")
else:
    if apoliproteinaNivelA1 > 130:
        print("Tu nivel de apoliproteina es mas que optimo")

if apoliproteinaNivelB < 90:
    print("Su nivel de apoliproteina B es optimo")
else:
    if apoliproteinaNivelB >= 90 and apoliproteinaNivelB < 115:
        print("Su nivel de apoliproteina B esta sobre el limite optimo")
    elif apoliproteinaNivelB >= 115 and apoliproteinaNivelB <= 140:
        print("Su nivel de apoliproteina B es Alto")
    elif apoliproteinaNivelB > 140:
        print("Su nivel apoliproteina B es Desamiado alto")