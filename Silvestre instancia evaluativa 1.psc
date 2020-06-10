SubProceso S <- correcto (sa)
	Definir numerosV Como Cadena;
	numerosV<-"0123456789";
	Definir A,AA como entero;
    Definir S Como Logico;
	
	Para AA<-0 Hasta Longitud(sa)-1 Con Paso 1 Hacer
		
		Para A<- 0 Hasta 9 Con Paso 1 Hacer
			
			Si Subcadena(numerosV,A,A) = SubCadena(sa,AA,AA) Entonces
				S <- Verdadero;
				A <- 10;
			SiNo
				S <- Falso;
				
			FinSi
		FinPara
		Si S = Falso Entonces
			AA<- Longitud(sa);
		FinSi
		
	FinPara
	
FinSubProceso

Algoritmo administracion
	
	Definir  sa  Como Cadena ; 
	Definir accion, cuenta,password  como entero ;
	Definir cuenta2 , password2 , registro , password1 , password3 como cadena ;
	Definir Vcuenta Como Logico;
	Vcuenta <- Falso;
	Escribir "Bienvenido de Nuevo";
	Escribir "";
	
	Repetir
		escribir "Administracion de Alquileres";
		Escribir "";
		Escribir "1) INICIAR SESIÓN"; 
		Escribir "" ; 
		Escribir "2) CERRAR PROGRAMA";
		Escribir "";
		Escribir "";
		 escribir "Ejecute una Acción" ; 
		 leer sa;
		accion<-0;
		Si correcto(sa) Entonces
			accion <- ConvertirANumero(sa);
			
		SiNo
			
			
		FinSi
		Limpiar Pantalla;
		Segun accion Hacer
			1:  
				
				Si Vcuenta = Verdadero Entonces
					Repetir
						Escribir "";
						Escribir "Nombre de Usuario";
						Escribir "";
						Escribir "Silvestre Inc."; 
						leer cuenta2; 
						Escribir "Ingrese Contraseña";
						leer password3;
						Si  cuenta2 = registro y password1  = password3  Entonces
							Limpiar Pantalla ;
							Escribir "BIENVENIDO DE VUELTA ",  cuenta2;
							accion<-2;
						SiNo
							Limpiar Pantalla ;
							Escribir "Usuario y/o Contraseña incorrectos";
						FinSi
						
					Hasta Que accion = 2;
				SiNo
					Repetir
						Limpiar Pantalla;
						Escribir "No hay ninguna Cuenta Registrada";
						escribir "";
						Escribir "Cree un Usuario";
						Escribir "";
						Escribir "1) Avanzar" ;
						leer sa;
						accion<-1;
						Si correcto(sa) Entonces
							accion <- ConvertirANumero(sa);
							Limpiar Pantalla ; 
							Escribir "REGISTRO DE USUARIO";
							Escribir "";
							Escribir "Ingrese Nombre de Usuario";
							leer registro;
							Escribir "Ingrese Contraseña ";
							leer password1;
							Escribir "Confirmar Contraseña";
							leer password3;
							Si password1=password3 Entonces 
								Limpiar Pantalla;
								
								Escribir "";
								Escribir "Cuenta Registrada" ;
								Escribir "";
								Vcuenta <- Verdadero ; 
							SiNo
								Repetir
								Limpiar Pantalla ; 
								Escribir  " Las contraseñas no coinciden" ;
								Escribir "";
								Escribir  "Ingresar contraseña nuevamente" ;
								leer password3 ;
								hasta que password1=password3;
								Limpiar Pantalla;
							
						         Escribir "";
								Escribir "Cuenta Registrada";
								Escribir "";
								Vcuenta <- Verdadero ;
								
								
							FinSi 
							
							
							
							
							
							
						SiNo
					 accion <- 1 ;
						FinSi
						
					
					 
					hasta que accion = 1 ;
					
					
				FinSi
				
			
			2:
				Escribir "Saliendo de la Aplicacion";
		FinSegun
		
	Hasta Que accion = 2;
FinAlgoritmo

