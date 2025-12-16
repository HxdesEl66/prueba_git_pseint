SubProceso total <- sumar ( a , b )
	Definir total Como Entero;
	si a <= 0 O b <= 0 Entonces
		total <- 0;
	SiNo
		total <- a + b;
	FinSi
	
FinSubProceso

SubProceso saludar(nombre)
	Escribir "Hola camper [",nombre,"], un saludo de bienvenida a nuestra tripulacion";
FinSubProceso


SubProceso par <- esPar( n )
	Definir par Como Logico;
	
	par <- n mod 2 = 0;
	
FinSubProceso


SubProceso lecturaNumero(enunciado, rangoA, rangoB) 
	Definir numeroTexto Como Caracter;
	Definir numeroConvertido Como Entero;
	Repetir
		Escribir enunciado;
		Leer numeroTexto;
		
		
		numeroConvertido <- ConvertirANumero(numeroTexto);
		
		Si NO(numeroConvertido >= rangoA y numeroConvertido <= rangoB) Entonces
			Escribir "El rango del valor ingresado debe de estar entre: ";
			Escribir "$",rangoA," y $", rangoB;
		FinSi
		
		
		//Esperar 2 Segundos;
		//Limpiar Pantalla;
		
	Hasta Que numeroConvertido >= rangoA y numeroConvertido <= rangoB
	
FinSubProceso

Proceso ejemplo_funciones
	
	// Se requiere crear una solucion que solo permita al usuario
	// ingresar valores numericos para representar un salario
	// pero en un rago especifico
	Definir salario, valorTotal Como Entero;
	
	lecturaNumero("Ingrese su salario: ", 1400, 5200); // 1SMLV a 4.5SMLV

	
	lecturaNumero("Ingrese el monto a prestar: ", 500, 8999);//500.000 a 8.999.990
	
	lecturaNumero("Ingrese el monto del salario de sus suenos: ", 50000, 899990);
	
	
//	Definir _total Como Entero;
//	
//	_total <- sumar(2, 4);
//	
//	Escribir "La suma es: ", _total;
//	Escribir "La suma es: ", sumar(0,7);
//	Escribir "El numero 7 es par?: ", esPar(7);
//	Escribir "El numero 70 es par?: ", esPar(70);
	
//	saludar("Adrian");
//	saludar("Poncio");
//	saludar("Cristian");
	
FinProceso
