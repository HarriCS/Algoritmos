Proceso LoginMedicos
	
    Dimension usuarios[3]
    Dimension contra[3]
    Definir usuario, contrasena, u Como Caracter
    Definir intentos, i, login, token Como Entero
    token = 0
	
    // Guardamos los usuarios y contraseñas
    usuarios[0] <- "medico1"
    usuarios[1] <- "medico2"
    usuarios[2] <- "medico3"
	
    contra[0] <- "clave1"
    contra[1] <- "clave2"
    contra[2] <- "clave3"
	
    intentos <- 1
    login = 1
	
    // Bucle para permitir hasta 3 intentos
    Mientras (login <= 3) Hacer
        Escribir "Señor Medico Ingrese su usuario:"
        Leer usuario
		
        Escribir "Ingrese su contraseña: "
        Leer contrasena
		
        // Comparamos con los usuarios guardados
        Para i <- 0 Hasta 2
            Si (usuarios[i] == usuario Y contra[i] == contrasena) Entonces
                token = 1
				u = usuarios[i]
				login = 5
				intentos = 5
            FinSi
        FinPara
		Si (intentos <= 3) Entonces
			Imprimir "Usuario y contraseña invalido intento #" , intentos , " de 3 Recuerde sobrepasado 3 intentos sera bloqueda la cuenta"
		Fin Si
		
        Si (intentos == 3) Entonces
            Escribir "Dudamos que sea un medico Registrado!!!! tiene ", intentos, " de 3." , "?????? !!!cuenta Bloqueada!!! ??????"
        FinSi
		login = login + 1
		intentos = intentos + 1
    FinMientras
	
    Si (token = 1) Entonces
        Escribir "Bienvenido al sistema. usuario: " , u
    Sino
        Escribir "Cuenta bloqueada por exceso de intentos."
    FinSi
	
FinProceso