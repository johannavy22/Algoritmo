Algoritmo SueldoNeto
	Definir Horas, Tarifas, Tasa, SueldoBruto, Impuestos, SN Como Real
	Escribir "¿Cuantas horas trabaja usted?: "
	Leer Horas 
	Escribir "¿Cuanto te pagan por la hora?: "
	Leer Tarifa
	Escribir "¿Cuanto es la tasa que te ofrecen?: "
	Leer Tasa
	SueldoBruto = Horas*Tarifa
	Impuestos = SueldoBruto*Tasa
	SN = SueldoBruto - Impuestos
	Escribir "El sueldo bruto es: " SueldoBruto " Soles"
	Escribir "Los impuestos son: " Impuestos " Soles"
	Escribir "El sueldo neto es: " SN " Soles"
FinAlgoritmo