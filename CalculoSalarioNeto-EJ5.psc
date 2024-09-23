ALGORITMO CalculoSalarioNeto
	// Declaraci�n de variables
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
	
	// Inicializaci�n
	DD <- 0
	IP <- 0
	
	ESCRIBIR "Ingrese el salario bruto mensual:"
	LEER SB
	
	ESCRIBIR "Ingrese el n�mero de hijos:"
	LEER NH
	
	// C�lculo del impuesto seg�n el salario bruto
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
	
	// C�lculo de deducci�n por hijos (si tiene m�s de 2 hijos)
	SI NH > 2 ENTONCES
		DD <- NH * 100  // Deducci�n de $100 por cada hijo si tiene m�s de 2
		ESCRIBIR "Se ha aplicado una deducci�n de $", DD, " por ", NH, " hijos."
	SINO
		ESCRIBIR "No se ha aplicado ninguna deducci�n por hijos."
	FIN SI
	
	// C�lculo del salario neto
	SN <- SB - IP + DD
	
	// Mostrar detalles
	ESCRIBIR "El impuesto aplicado es: $", IP
	ESCRIBIR "El salario neto es: $", SN
	
FIN ALGORITMO

