Algoritmo ComisionesVendedor
	
	//VENTAS = V
	//OBJETIVO DE VENTAS = OV
	//COMISION = C
	//PREMIO = P
	//TOTAL DE COMISION = TC
	//NUEVOS CLIENTES = NC
Definir V, OV, C, P, TC Como Real
Definir NC Como Entero

// Entrada de datos
Escribir "Ingrese el monto total de las ventas del vendedor:"
Leer V
Escribir "Ingrese el objetivo de ventas del vendedor:"
Leer OV
Escribir "Ingrese la cantidad de nuevos clientes conseguidos:"
Leer NC

// Calcular la comisi�n base
Si V > 5000 Entonces
	C <- V * 0.10 // Comisi�n del 10% si las ventas superan $5000
Sino 
	Si V > 2000 Entonces
        C <- V * 0.05 // Comisi�n del 5% si las ventas superan $2000
    Sino
        C <- 0 // Sin comisi�n si no supera los $2000
    Fin Si
FINSI  
    // Calcular el premio seg�n nuevos clientes y cumplimiento de objetivo
    Si V >= OV Y NC > 10 Entonces
        P <- 500 // Premio de $500 si cumple el objetivo y m�s de 10 clientes
    Sino 
		Si V < OV Y NC > 15 Entonces
			P <- 200 // Premio de $200 si no cumple el objetivo pero tiene m�s de 15 clientes
		Sino
			P <- 0 // Sin premio
		Fin Si
	FINSI	
		// Calcular la comisi�n total
		TC <- C + P
		
		// Mostrar los resultados
		Escribir "La comisi�n del vendedor es: $", C
		Escribir "El premio del vendedor es: $", P
		Escribir "El total de comisiones y premios es: $", TC
FinAlgoritmo

