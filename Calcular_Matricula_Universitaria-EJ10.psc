Algoritmo Calcular_Matricula_Universitaria
	//promedio = P
	//numero de hermanos = NH
	//NUMERO DE ASIGNATURAS = NA
	//PAGO A TIEMPO = PT
	//COSTO FINAL = CF
	//DESCUENTO PROMEDIO = DP
	//DESCUENTO POR HERMANOS = DH
	//DESCUENTO POR ASIGNATURAS = DA
	//RECARGO = RG
	// COSTO BASE = CB
		Definir P, NH, NA, PT, CF Como Real
		Definir DP, DH, DA, RG Como Logico
		
		// Inicialización de la matrícula base
		Definir CB Como Real
		CB = 2000
		
		// Entrada de datos
		Escribir "Ingrese el promedio del estudiante: "
		Leer P
		Escribir "Ingrese el número de hermanos en la universidad: "
		Leer NH
		Escribir "Ingrese el número de asignaturas en las que está inscrito: "
		Leer NA
		Escribir "¿El pago se realizó a tiempo? (1 para Sí, 0 para No): "
		Leer PT
		
		// Inicializar costo final con el costo base
		CF = CB
		
		// Descuento del 15% si el promedio es superior a 90
		Si P > 90 Entonces
			CF = CF * 0.85
		FinSi
		
		// Descuento adicional del 10% si tiene más de 2 hermanos en la universidad
		Si NH > 2 Entonces
			CF = CF * 0.90
		FinSi
		
		// Descuento adicional del 5% si está inscrito en más de 5 asignaturas
		Si NA > 5 Entonces
			CF = CF * 0.95
		FinSi
		
		// Recargo del 5% si el pago fue después de la fecha límite
		Si PT = 0 Entonces
			CF = CF * 1.05
		FinSi
		
		// Mostrar el costo final de la matrícula
		Escribir "El costo final de la matrícula es: $", CF
FinAlgoritmo
