Funcion variableColesterolTotal <- FuncionColesterolTotal ( colesterolTotal )
	colesterolTotal=(colesterolHDL+colesterolLDL+colesterolVLDL)
	Si colesterolTotal<=200 Entonces
		variableColesterolTotal= "Tu colesterol total es optimo"
	SiNo
		Si colesterolTotal>200 y colesterolTotal<=240 Entonces
			variableColesterolTotal= "Tu colesterol total esta sobre el limite optimo"
		SiNo
			Si colesterolTotal>240 Entonces
				variableColesterolTotal= "Tu colesterol total es muy alto"
			FinSi
		FinSi
	Fin Si
Fin Funcion

Funcion variableColesterolVLDL<- FuncionColesterolVLDL ( colesterolVLDL )
	Si colesterolVLDL>=2 y colesterolVLDL<=30 Entonces
		variableColesterolVLDL= "Tu nivel de VLDL-Colesterol es optimo"
	SiNo
		Si colesterolVLDL>30 Entonces
			variableColesterolVLDL= "Tu nivel de VLDL-Colesterol es perducial"
		FinSi
	Fin Si
Fin Funcion

Funcion variableColesterolLDL <- FuncionColesterolLDL ( colesterolLDL )
	Si colesterolLDL<100 Entonces
		variableColesterolLDL= "Tu nivel de LDL-Colesterol es optimo"
	SiNo
		Si colesterolLDL>=100 y colesterolLDL<=129 Entonces
			variableColesterolLDL= "Tu nivel de LDL-Colesterol esta sobre el limite optimo"
		SiNo
			Si colesterolLDL>=130 y colesterolLDL<=189 Entonces
				variableColesterolLDL= "Tu nivel de LDL-Colesterol es alto"
			SiNo
				Si colesterolLDL>=190 Entonces
					variableColesterolLDL="Tu nivel de LDL-Colesterol es muy alto"
				FinSi
			FinSi
		FinSi
	Fin Si
Fin Funcion

Funcion variableColesterolHDL <- FuncionColesterolHDL ( colesterolHDL)
	Si colesterolHDL>=40 y colesterolHDL<=60 Entonces
		variableColesterolHDL= "Tu valor es optimo"
	SiNo
		Si colesterolHDL>60 Entonces
			variableColesterolHDL= "Tu HDL-Colesterol es beneficioso"
		FinSi
	Fin Si
Fin Funcion


Funcion varProte <- proteína ( prote )
	si prote <= 1.0 Entonces
		varProte = "su porcentaje de proteína es óptimo"
	SiNo
		si prote >= 1.0 y prote <= 2.9 Entonces
			varProte = "su porcentaje de proteína esta entre el límite de lo óptimo y alto"
		SiNo
			si prote >= 3.0 Entonces
				varProte = "su porcentaje de proteína es muy alto"
			FinSi
		FinSi
	FinSi
Fin Funcion

Funcion varHomo <- Homocisteína ( homo )
	si homo <= 2 y homo >= 15 Entonces
		Escribir "su porcentaje de Homocisteína es óptimo"
	SiNo
		si homo >= 15 y homo <= 30 Entonces
			varHomo = "su porcentaje de Homocisteína esta al limite de lo óptimo"
		SiNo
			si homo >= 30 y homo <= 100 Entonces
				varHomo = "su porcentaje de Homocisteína es alto"
			SiNo
				si homo >= 100 Entonces
					varHomo = "su porcentaje de Homocisteína es muuy alto"
				FinSi
			FinSi
		FinSi
	FinSi
Fin Funcion

Funcion vartrigli <- triglicérina ( trigli )
	si trigli <= 150 Entonces
		vartrigli = "su porcentaje de triglicérina es óptimo"
	SiNo
		si trigli >= 150 y trigli <= 199 Entonces
			vartrigli = "su porcentaje de triglicérina esta sobre el límite óptimo"
		SiNo
			si trigli >= 200 y trigli <= 499 Entonces
				vartrigli = "su porcentaje de triglicérina es alto"
			SiNo
				si trigli >= 500 Entonces
					vartrigli = "su porcentaje de triglicérina es muy alto"
				FinSi
			FinSi
		FinSi
	FinSi
Fin Funcion
Funcion apo=Apiloproteina(apoliproteinaNivelA1,apoliproteinaNivelB)
	Si apoliproteinaNivelA1=130 Entonces
		apo= "Tu nivel de apoliproteina es optimo"
	SiNo
		Si apoliproteinaNivelA1>130 Entonces
			apo= "Tu nivel de apoliproteina es mas que optimo"
		Fin Si
	Fin Si
	
	
	Si apoliproteinaNivelB<90 Entonces
		apo= "Su nivel de apoliproteina B es optimo"
	SiNo
		Si apoliproteinaNivelB>=90 o apoliproteinaNivelB<115 Entonces
			apo= "Su nivel de apoliproteina B esta sobre el limite optimo"
		SiNo
			Si apoliproteinaNivelB>=115 o apoliproteinaNivelB<=140 Entonces
				Escribir "Su nivel de apoliproteina B es Alto"
			SiNo
				Si apoliproteinaNivelB>140 Entonces
					Escribir"Su nivel apoliproteina B es Desamiado alto"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
	
Fin Funcion


Algoritmo sin_titulo
	Definir trigli Como real
	Definir nombree Como Caracter
	//Datos generales del paciente
	Escribir "Datos del paciente"
	Escribir "Ingrese su nombre"
	Leer nombree
	Escribir "Ingrese su valor de colesterolHDL"
	Leer colesterolHDL
	Escribir "Ingrese su valor de colesterolHDL"
	Leer colesterolLDL
	Escribir "Ingrese su valor de colesterolHDL"
	Leer colesterolVLDL
	Escribir "======================================"
	Imprimir FuncionColesterolTotal(colesterolTotal)
	Imprimir FuncionColesterolVLDL(colesterolVLDL)
	Imprimir FuncionColesterolLDL(colesterolLDL)
	Imprimir FuncionColesterolHDL(colesterolHDL)
	Escribir "======================================"
	Escribir ""
	Escribir "ingrese la cantidad de triglicérina"
	Leer trigli
	Escribir "ingrese la cantidad de Homocisteína"
	Leer homo
	Escribir "ingrese la cantidad de proteína C"
	Leer prote
	Escribir "Resultados del paciente " nombree " sobre su triglicérina, Homocisteína y proteína: "
	triglice = triglicérina ( trigli )
	homoci = Homocisteína ( homo )
	protei = proteína ( prote )
	// Imprimir resultados
	Escribir "======================================"
	Escribir triglice
	Escribir homoci
	Escribir protei
	Escribir "======================================"
	Escribir ""
	Definir apoliproteinaNivelA1 Como Real
	Definir apoliproteinaNivelB Como Real
	Escribir "Ingrese su nivel de apoliproteina A-I"
	Leer apoliproteinaNivelA1
	
	Escribir "Ingrese su nivel de apoliproteina B"
	Leer apoliproteinaNivelB
	Si apoliproteinaNivelA1=130 Entonces
		Escribir "Tu nivel de apoliproteina es optimo"
	SiNo
		Si apoliproteinaNivelA1>130 Entonces
			Escribir "Tu nivel de apoliproteina es mas que optimo"
		Fin Si
	Fin Si
	
	Escribir "Ingrese su nivel de apoliproteina B"
	Leer apoliproteinaNivelB
	Si apoliproteinaNivelB<90 Entonces
		Escribir "======================================"
		Escribir "Su nivel de apoliproteina B es optimo"
		Escribir "======================================"
	SiNo
		Si apoliproteinaNivelB>=90 o apoliproteinaNivelB<115 Entonces
			Escribir "======================================"
			Escribir "Su nivel de apoliproteina B esta sobre el limite optimo"
			Escribir "======================================"
		SiNo
			Si apoliproteinaNivelB>=115 o apoliproteinaNivelB<=140 Entonces
				Escribir "======================================"
				Escribir "Su nivel de apoliproteina B es Alto"
				Escribir "======================================"
			SiNo
				Si apoliproteinaNivelB>140 Entonces
					Escribir "======================================"
					Escribir"Su nivel apoliproteina B es Desamiado alto"
					Escribir "======================================"
				Fin Si
			Fin Si
		Fin Si
	Fin Si
FinAlgoritmo