Funcion s <- suma ( n1, n2 )
	s = n1 + n2
	
Fin Funcion

Funcion r <- resta(n1,n2)
	r = n1 - n2
Fin Funcion	
Funcion m <- multiplicacion ( n1, n2 )
	m = n1 * n2
Fin Funcion	
Funcion d <- divi ( n1, n2 )
	d = n1 / n2
Fin Funcion
	
Funcion p <- pedir ( s )
	Escribir "Ingrese un numero"
	Leer P
Fin Funcion

Algoritmo opeMateFunciones
	
	Definir a, b Como Entero
	a = pedir(s)
	b = pedir(s)
	Imprimir a, " + " , b , " = " , suma(a,b)
	Imprimir a, " - " , b , " = " , resta(a,b)
	Imprimir a, " * " , b , " = " , multiplicacion(a,b)
	Imprimir a, " / " , b , " = " , divi(a,b)
FinAlgoritmo
