Funcion frase
	// Programa para indicar la frase de mayor longitud
		
		// Declaramos las variables
		 Definir frase1, frase2, frase_mas_larga  Como Caracter
		
		// Pedimos al usuario que ingrese las frases
	 escribir "Ingrese la primera frase: "
	Escribir "Ingrese la segunda frase: "
		
		// Calculamos la longitud de las frases
		leer frase1
		leer frase2
		
		// Comparamos las longitudes
	si longitud_frase1 > longitud_frase2
			frase_mas_larga = frase1
			
	sino 
		frase_mas_larga = frase2
		
		// Imprimimos la frase de mayor longitud
		Escribir "La frase de mayor longitud es:", frase_mas_larga
		fin si 
FinFuncion



Funcion p
	//Indicar cuantas ,.;: hay en una cadena
	definir caden Como Caracter	
	Escribir "       ---->contador de [,.;:]<----"
	escribir "Ingresa tu frase  "
	leer caden 
	juan = Longitud(caden)
	
	Mientras x <= juan Hacer
		segun Subcadena(caden,x,x) Hacer
			",":
				contadorcoma = contadorcoma + 1 
			".": 
				contadorpunto = contadorpunto + 1 
			";": 
				conatdorcomapun = conatdorcomapun  + 1 
			":": 
				contador2punto = contador2punto + 1
				
		FinSegun
		x = x + 1
	FinMientras
	Escribir "____________________________________"
	Escribir "> la oracion tiene < "
	Escribir "comas: ", contadorcoma
	Escribir "puntos: ", contadorpunto
	Escribir "punto y coma :" , conatdorcomapun
	Escribir "2 puntos :", contador2punto
FinFuncion


	Proceso ContarVocalesConsonantesDigitos
		Definir cadena Como Cadena
		Definir contadorVocales, contadorConsonantes, contadorDigitos Como Entero
		contadorVocales = 0
		contadorConsonantes = 0
		contadorDigitos = 0
		
		Escribir "Ingrese una cadena:"
		Leer caden
		
		juan = Minusculas(caden)  // Convertir la cadena a minúsculas para simplificar la comparación
		juana = Longitud(caden) 
		Para i = 1 Hasta juana Hacer
			
			
			
			caracteer = Subcadena(caden, i, i)
			Si caracteer >= "a" Y caracteer <= "z" Entonces
				Si caracteer = "a" O caracteer = "e" O caracteer = "i" O caracteer = "o" O caracteer = "u" Entonces
					contadorVocales = contadorVocales + 1
				Sino
					contadorConsonantes = contadorConsonantes + 1
				Fin Si
			Sino Si caracteer >= "0" Y caracteer <= "9" Entonces
					contadorDigitos = contadorDigitos + 1
				Fin Si
			FinSi
			
		FinPara
		
		Escribir "Número de vocales: ", contadorVocales
		Escribir "Número de consonantes: ", contadorConsonantes
		Escribir "Número de dígitos: ", contadorDigitos
	Fin Proceso



	 


Funcion espacios
	Definir oracion como cadena
	Definir espacio, i, cantidad Como Entero
	espacio= 0
	i = 0
	cantidad = 0
	Escribir "Ingrese una oracion"
	Leer oracion
	cantidad = Longitud(oracion)
	Para i<-0 Hasta cantidad  Con Paso 1 hacer
		si SubCadena(oracion, i, i)= " " Entonces
			espacio = espacio + 1
		FinSi
	Fin Para
	Escribir "la frase tiene: ", espacio + 1 ," palabras "
FinFuncion

Funcion sumar
	Definir n, suma Como Entero
	
	Escribir "ingrese un numero"
	Leer n
	
	suma = 0
	Mientras n > 0 Hacer
		suma = suma + (n mod 10)
		n = trunc (n/10)
	Fin Mientras
	Escribir "La suma de los digitos es: ", suma

FinFuncion
Funcion pl
	Definir a, b, x Como Entero
	Definir plabra Como Caracter
	Escribir "Ingrese una palabra: "
	Leer palabra
	b = Longitud(palabra)
	a = 1
	
	x = 0
	Mientras a < b Hacer
		si SubCadena(palabra,a,a) <> SubCadena(palabra,b,b)
			x = x + 1
		FinSi
		a = a + 1
		b = b - 1
	Fin Mientras
	si x = 0 Entonces
		Escribir "La palbra: ", palabra , "es palindromo"
	SiNo
		Escribir "La palbra: ", palabra , "no es palindromo"
	FinSi
FinFuncion

funcion MostrarPosicionCaracter
    Definir cadena Como Caracter
    Definir caracterBuscado , caracteraPresentar , text Como Caracter
	definir encontre Como Logico
	Definir posicion Como Entero
	
    Escribir "Ingresa una cadena: "
    Leer cadena
	
    Escribir "Ingresa el carácter que quieres buscar: "
    Leer caracterBuscado
	
	cadena <- Minusculas(cadena)
    posicion <- 0
	encontre<- falso;
	
    Mientras posicion <= Longitud(cadena) 
		text <- Subcadena(cadena, posicion, posicion )
        Si text= caracterBuscado Entonces
            caracteraPresentar <-  ConvertirATexto( posicion + 1) + "; ";
			encontre<- Verdadero;
        FinSi
        posicion <- posicion + 1
    FinMientras
	
    Si encontre   = Verdadero Entonces
		Escribir "Se econtro en la sigueite posiscio " + caracteraPresentar;
	SiNo
		Escribir "El carácter ", caracterBuscado, " no se encuentra en la cadena."
    FinSi
	
FinFuncion

