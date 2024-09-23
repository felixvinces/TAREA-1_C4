Algoritmo CalculoBonificaciones
	// Declaración de variables
	//salarioBase = SB
	//ANTIGUEDAD = AT
	// DESEMPEÑO = DS
	//HORASTRABAJADS = HT
	//BONIFICACION = BN
	//SALARIOFINAL = SF
	DEFINIR SB COMO REAL
	DEFINIR AT COMO ENTERO
	DEFINIR DS COMO REAL
	DEFINIR HT COMO ENTERO
	DEFINIR BN COMO REAL
	DEFINIR SF COMO REAL
	
	// Inicialización
	SB <- 2000
	BN <- 0
	
	ESCRIBIR "Ingrese la antigüedad del empleado (en años):"
	LEER AT
	
	ESCRIBIR "Ingrese el porcentaje de desempeño del empleado (en %):"
	LEER DS
	
	ESCRIBIR "Ingrese las horas trabajadas esta semana:"
	LEER HT
	
	// Bonificación por antigüedad y desempeño
	SI AT > 5 Y DS > 80 ENTONCES
		BN <- 10
	FIN SI
	
	// Bonificación adicional por desempeño superior al 90% y más de 50 horas trabajadas
	SI DS > 90 Y HT > 50 ENTONCES
		BN <- BN + 5
	FIN SI
	
	// Calcular salario final con bonificaciones
	SF <- SB + (SB * BN / 100)
	
	// Mostrar salario final
	ESCRIBIR "El salario final con bonificaciones es: ", SF
	
FinAlgoritmo
