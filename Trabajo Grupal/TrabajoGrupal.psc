Algoritmo TrabajoGrupal
	Definir nombreyApellido Como Caracter
	DEfinir Carrera Como Caracter
	DEfinir Materia Como Caracter
	DEfinir Semestre Como Caracter
	DEfinir Puntualidad como entero
	Definir Practicos como entero
	Definir Proyectos Como Entero
	Definir Examenes Como Entero
	Definir PracticosyProyectos Como Real
	Definir ProyectoGrupal como entero
	DEfinir DefensaySeguimiento Como Entero
	Definir Cooperacion Como Entero
	Escribir "Escribe tus datos personales"
	Escribir "Nombre y apellido del alumno"
	Leer nombreAlumno
	Escribir "Carrera: "
	Leer Carrera
	Escribir "Materia"
	Leer Materia 
	Escribir "Semestre"
	Leer Semestre
	Escribir "¿Cuantas fueron tus faltas injustificadas?"
	Leer Faltas
	Si Faltas>=8 Entonces
		Escribir "Reprobaste"
	SiNo
		Escribir "¿Hiciste tus Practicos y Proyectos en clase?"
		Leer Hiciste
		Escribir "¿Cuantos Practicos Realizaste?"
		Leer Practicos 
		Escribir "¿Cuantos Proyectos Realizaste?"
		Leer Proyectos
		PracticosyProyectos=(Practicos+Proyectos)/2
		Escribir PracticosyProyectos
		Leer PracticosyProyectos
	Fin Si
FinAlgoritmo
