    ALGORITMO PrecioFinal
		// Declaración de variables
		//PRECIO = PC
		//ESMIEMBRO = EM
		//USADEBITO = UD
		//DIA = D
		//DESUENTO = DC
		//RECARGO = RG
		DEFINIR PC COMO REAL    
		DEFINIR EM COMO CADENA
		DEFINIR UD COMO CADENA
		DEFINIR D COMO CADENA
		DEFINIR DC COMO REAL
		DEFINIR RG COMO REAL
		
		// Inicialización
		ESCRIBIR "Ingrese el precio del producto:"
		LEER PC
		
		ESCRIBIR "¿Es miembro Premium? (SI/NO):"
		LEER EM
		
		ESCRIBIR "¿Usa tarjeta de débito? (SI/NO):"
		LEER UD
		
		ESCRIBIR "Ingrese el día de la semana:"
		LEER D
		
		DC <- 0
		RG <- 0
		
		// Aplicar descuento por membresía
		SI EM = "SI" Y PC > 1000 ENTONCES
			DC <- 15
		FIN SI
		
		// Aplicar descuento por tarjeta de débito
		SI EM = "NO" Y UD = "SI" ENTONCES
			DC <- 5
		FIN SI
		
		// Aplicar recargo por compras mayores a $2000
		SI PC > 2000 ENTONCES
			RG <- 2
		FIN SI
		
		// Descuento adicional por viernes
		SI D = "viernes" ENTONCES
			DC <- DC + 3
		FIN SI
		
		// Calcular precio final
		PC <- PC - (PC * DC / 100)
		PC <- PC + (PC * RG / 100)
		
		// Mostrar precio final
		ESCRIBIR "El precio final es: ", PC
		
	FIN ALGORITMO

