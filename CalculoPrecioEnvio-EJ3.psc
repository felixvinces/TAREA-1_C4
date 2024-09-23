Algoritmo CalculoPrecioEnvio
	// Declaraci�n de variables
	//PESO=P
	//DISTANCIA=DT
	//ESINTERNACIONAL=EI
	//ESEXPRES=EEX
	//PRECIOBASE=PB
	//RECARGO=RG
	//PRECIOFINAL=PF
	DEFINIR P COMO REAL
	DEFINIR DT COMO REAL
	DEFINIR EI COMO CADENA
	DEFINIR EEX COMO CADENA
	DEFINIR PB COMO REAL
	DEFINIR RG COMO REAL
	DEFINIR PF COMO REAL
	
	// Inicializaci�n
	RG <- 0
	
	ESCRIBIR "Ingrese el peso del paquete (en kg):"
	LEER P
	
	ESCRIBIR "Ingrese la distancia del env�o (en km):"
	LEER DT
	
	ESCRIBIR "�Es un env�o internacional? (SI/NO):"
	LEER EI
	
	ESCRIBIR "�Elige servicio expr�s? (SI/NO):"
	LEER EEX
	
	// C�lculo del precio base
	PB <- (P / 5) * 10
	
	// Recargo por distancia mayor a 500 km
	SI DT > 500 ENTONCES
		RG <- RG + 15
	FIN SI
	
	// Recargo por env�o internacional
	SI EI = "SI" ENTONCES
		RG <- RG + 20
	FIN SI
	
	// Recargo adicional por servicio expr�s y distancia mayor a 1000 km
	SI EEX = "SI" Y DT > 1000 ENTONCES
		RG <- RG + 10
	FIN SI
	
	// Recargo por peso superior a 50 kg
	SI P > 50 ENTONCES
		RG <- RG + 5
	FIN SI
	
	// Calcular precio final con recargos
	PF <- PB + (PB * RG / 100)
	
	// Mostrar precio final
	ESCRIBIR "El precio final del env�o es: ", PF
	
FinAlgoritmo
