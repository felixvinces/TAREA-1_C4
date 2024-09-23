Algoritmo ReservaHotel
	//TIPO DE HABITACION = TH
	//TEMPORADA ALTA = TA
	//PAGA CON TARJETA DE CREDITO = TC
	//DIAS ESTADIAS = DET
	//PRECIO BASE = PB
	//RECARGO TEMPORADA = RT
	//DESCUENTO DE ESTADIA = DCE
	//DESCUENTO SUITE = DS
	//RECARGO DE TARJETA = RTT
	//PRECIO FINAL = PF
	//RESPUESTA =RP
    Definir TH Como Cadena
    Definir TA, TC Como Logico
    Definir DET, PB, RT, DCE, DS, RTT, PF Como Real
    
    // Entrada de datos
    Escribir "Ingrese el tipo de habitaci�n (estandar, premium, suite):"
    Leer TH
    Escribir "Es temporada alta (julio o diciembre)? (Si/No):"
    Leer RP
    TA <- RP = "Si"
    Escribir "Ingrese la cantidad de d�as de estad�a:"
    Leer DET
    Escribir "Paga con tarjeta de cr�dito? (Si/No):"
    Leer RP
    TC <- RP = "Si"
    
    // Asignar precio base seg�n el tipo de habitaci�n
    Si TH = "estandar" Entonces
        PB <- 100
    Sino  TH = "premium" 
		PB <- 200
		FINSI
		 Si TH = "suite" Entonces
				PB <- 300
			Fin Si
			
			// Recargo por temporada alta (25%)
			Si TA Entonces
				RT <- PB * 0.25
			Sino
				RT <- 0
			Fin Si
			
			// Descuento por estad�a mayor a 7 d�as (10%)
			Si DET > 7 Entonces
				DCE <- (PB + RT) * 0.10
			Sino
				DCE <- 0
			Fin Si
			
			// Descuento adicional para suite si la estad�a es mayor a 10 d�as (5%)
			Si TH = "suite" Y DET > 10 Entonces
				DS <- (PB + RT - DCE) * 0.05
			Sino
				DS <- 0
			Fin Si
			
			// Recargo por pago con tarjeta de cr�dito (3%)
			Si TC Entonces
				RT <- (PB + RT - DCE - DS) * 0.03
			Sino
				RT <- 0
			Fin Si
			
			// C�lculo del precio final
			PF <- (PB + RCT - DET - DS) + RT
			
			// Mostrar el precio final
			Escribir "El precio final de la reserva es: $", PF
FinAlgoritmo

