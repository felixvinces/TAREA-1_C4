Algoritmo CalculoBonificaciones
	// Declaraci�n de variables
	//salarioBase = SB
	//ANTIGUEDAD = AT
	// DESEMPE�O = DS
	//HORASTRABAJADS = HT
	//BONIFICACION = BN
	//SALARIOFINAL = SF
	DEFINIR SB COMO REAL
	DEFINIR AT COMO ENTERO
	DEFINIR DS COMO REAL
	DEFINIR HT COMO ENTERO
	DEFINIR BN COMO REAL
	DEFINIR SF COMO REAL
	
	// Inicializaci�n
	SB <- 2000
	BN <- 0
	
	ESCRIBIR "Ingrese la antig�edad del empleado (en a�os):"
	LEER AT
	
	ESCRIBIR "Ingrese el porcentaje de desempe�o del empleado (en %):"
	LEER DS
	
	ESCRIBIR "Ingrese las horas trabajadas esta semana:"
	LEER HT
	
	// Bonificaci�n por antig�edad y desempe�o
	SI AT > 5 Y DS > 80 ENTONCES
		BN <- 10
	FIN SI
	
	// Bonificaci�n adicional por desempe�o superior al 90% y m�s de 50 horas trabajadas
	SI DS > 90 Y HT > 50 ENTONCES
		BN <- BN + 5
	FIN SI
	
	// Calcular salario final con bonificaciones
	SF <- SB + (SB * BN / 100)
	
	// Mostrar salario final
	ESCRIBIR "El salario final con bonificaciones es: ", SF
	
FinAlgoritmo
