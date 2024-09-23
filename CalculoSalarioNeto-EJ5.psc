ALGORITMO CalculoSalarioNeto
	// Declaración de variables
	//SALARIO BRUTO = SB
	//NUMEROS DE HIJOS = NH
	//IMPUESTO = IP
	//DEDUCCION = DD
	//SALARIO NETO = SN
	DEFINIR SB COMO REAL
	DEFINIR NH COMO ENTERO
	DEFINIR IP COMO REAL
	DEFINIR DD COMO REAL
	DEFINIR SN COMO REAL
	
	// Inicialización
	DD <- 0
	IP <- 0
	
	ESCRIBIR "Ingrese el salario bruto mensual:"
	LEER SB
	
	ESCRIBIR "Ingrese el número de hijos:"
	LEER NH
	
	// Cálculo del impuesto según el salario bruto
	SI SB < 2000 ENTONCES
		IP <- SB * 0.10  // 10% de impuesto
		ESCRIBIR "Se ha aplicado un impuesto del 10%."
	SINO 
		SI SB >= 2000 Y SB <= 5000 ENTONCES
			IP <- SB * 0.20  // 20% de impuesto
			ESCRIBIR "Se ha aplicado un impuesto del 20%."
		SINO
			IP <- SB * 0.30  // 30% de impuesto
			ESCRIBIR "Se ha aplicado un impuesto del 30%."
		FIN SI
	FIN SI
	
	// Cálculo de deducción por hijos (si tiene más de 2 hijos)
	SI NH > 2 ENTONCES
		DD <- NH * 100  // Deducción de $100 por cada hijo si tiene más de 2
		ESCRIBIR "Se ha aplicado una deducción de $", DD, " por ", NH, " hijos."
	SINO
		ESCRIBIR "No se ha aplicado ninguna deducción por hijos."
	FIN SI
	
	// Cálculo del salario neto
	SN <- SB - IP + DD
	
	// Mostrar detalles
	ESCRIBIR "El impuesto aplicado es: $", IP
	ESCRIBIR "El salario neto es: $", SN
	
FIN ALGORITMO

