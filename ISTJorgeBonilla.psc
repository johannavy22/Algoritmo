Algoritmo ISTJorgeBonilla
	Definir NomEstudiante como Caracter
	Definir Carrera Como Entero
	Definir conFecha Como Numero
	Definir Matricula, Mensualidad Como Entero 
	
	Escribir "*** --- Instituto superior Tecnologico Joege Bonilla ---"
	Escribir "SISTEMA DE PAGOS DDE MATRICULAS Y PENSIONES"
	Escribir "Ingrese el nombre del estudiante:" Sin Saltar
	Leer NomEstudiante
	
	Escribir "¿Que carrera estudia?"
	Escribir "[1] Computacion e informatica"
	Escribir "[2] Secretariado Ejecutivo"
	Escribir "[3] Administracion"
	Escribir "Seleccione la opcion: " Sin saltar 
	Leer Carrera 
	Si (Carrera = 1) Entonces 
		Matricula = 300
		Mensualidad = 450 
		Finsi 
		Si (Carrera = 2) Entonces 
			Matricula = 200
			Mensualidad = 350
		FinSi 
		Si (Carrera = 3) Entonces 
			Matricula = 250
			Mensualidad = 400 
	FinSi
	Escribir "¿Esta en el rango de la fecha permitido?" Sin saltar
	Escribir " (1) = SI (0) = NO" Sin saltar 
	Leer confecha 
	Si (conFecha = 1) Entonces
		Definir concepto Como Entero
		Escribir "El estudiante esta dentro del rango de las fechas permitidas?"
		Escribir "¿Que concepto desea pagar?"
		Escribir "[1] Matricula y mensualidad"
		Escribir "[2] Matricula y mensualidades"
		Escribir "[3] Todo el semestre"
		Escribir "[4] Toda la carrera"
		Escribir "Seleccione el concepto a pagar: " Sin Saltar	
		Leer concepto 
		Definir NroMensualidades Como Entero 
		Definir NueMatricula, NueMensualidad, MontoPagar Como Real 
		Si (concepto = 1) Entonces
		//Condicion 1: Pago de matricula o mensualidad no hay descuento
		Definir OpcionMM Como Entero 
		Escribir "Elige la opcion para opcion para pagar: "
		Escribir "[1] Matricula"
		Escribir "[2] Mensualidad"
		Leer OpcionMM
		Si OpcionMM = 1 Entonces 
			Escribir "Usted debe pagar: Matricula "
		SiNo
			Escribir "Usted debe pagar: Mensualidad " 
		Fin Si 
	Fin Si 
	Si (Concepto = 2) Entonces 
	//Condicion 2: Pago de matricula + 2 hasta 4 mesualidades 5% de descuento en la matricula y el 10% en las pensiones
	Definir NroMensualidades Como Entero 
	Escribir  "¿Cuantas mensualidades desea pagar?" 
	Leer NroMensualidades 
	Si (NroMensualidades >= 2 ) Y (NroMensualidades <= 4) Entonces 
		Definir  NueMatricula, NueMensualidad, MontoPagar Como Real 
		NueMatricula = Matricula * 0.05
		NueMensualidad = Mensualidad * 0.10 
		MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)*NroMensualidades)
		Escribir "Usted debe pagar: " MontoPagar 
	SiNo 
		Escribir "Error!!! No se puede realizar la operacion" 
	FinSi
FinSi
Si (Concepto = 3) Entonces 
		//Condicion 3: Todo un semestre + matricula
		//descuento del 20% al monto total  de pensiones
		//y el 10% a la matricula
	NueMatricula = Matricula * 0.10
	NueMensualidad = Mensualidad * 0.20
	MontoPagar = (Matricula-NueMatricula) + ((Mensualidad - NueMensualidad)*5)
	Escribir "Usted debe pagar: " MontoPagar
FinSi
Si (Concepto = 4) Entonces 
	//Condicion 4: Toda la carrera descuento del 40% al 
	//monto total de pensiones y el 20% a las matriculas
	NueMatricula = Matricula * 0.20
	NueMensualidad = Mensualidad * 0.40
	MontoPagar = ((Matricula-NueMatricula)+6) + ((Mensualidad - NueMensualidad)*30)
	Escribir "Usted debe pagar: " MontoPagar
	FinSi
SiNo 
		Escribir "El estudiante esta fuera del rango de las fechas permitidas" 
		//si no esra dentro del rango
		//de las fehcas de matricula y pagoo de pensiones (coutas)
		//el sistema le genera el 1% de multa por retraso a la mensualidad, 
		//de lo contrario se le pueden aplicar las siguientes condiciones:
		Definir multa Como Real 
		multa = Mensualidad * 0.01
		Mensualidad = Mensualidad + multa 
		Escribir "la nueva mensualidad es: " Mensualidad 
	FinSi 
FinAlgoritmo
