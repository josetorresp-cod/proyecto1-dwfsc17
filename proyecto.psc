Proceso ProyectoSistemaDeCostos
	
	//Declarar las variables
	Definir precio_original Como Real;
	Definir cupon Como Real;
	Definir valor_IVA Como Real;
	Definir descuento_cantidad Como Real;
	Definir costo_envio Como Real;
	Definir precio_final Como Real;
	Definir precio_final2 Como Real;
	Definir kilos Como Real;
	Definir valor_kilo Como Real;
	Definir descuento Como Real;
	Definir IVA Como Real;
	Definir cantidad Como Real;
	Definir envio Como Real;
	Definir precio_con_descuento Como Real;
	Definir aplicar_descuento Como Logico;
	Definir i Como Entero;

	precio_original<-100;
	cupon<-0.10;
	valor_IVA<-1.12;
	descuento_cantidad<-0.05;
	costo_envio<-10;
	kilos<-3;
	valor_kilo<-2;
	
	//calcular el descuento
	descuento<-precio_original-(precio_original*cupon); //90
	
	//calcular descuento si aplica cupon
	si cupon > 0 Entonces
		aplicar_descuento <- Verdadero;
	sino
		aplicar_descuento <- Falso;
	FinSi
	
	si aplicar_descuento Entonces
		precio_con_descuento<-precio_original-(precio_original*cupon);
	sino
		precio_con_descuento<-precio_original;
	FinSi
	
	//calcular el iva
	IVA<-precio_con_descuento*valor_IVA; //100.80
	
	//calcular descuento por cantidad de productos
	cantidad<-IVA-(IVA*descuento_cantidad); //95.76
	
	//arreglo para elegir distintos destinos
	Definir destino_seleccionado Como Caracter;
	Definir destino Como Caracter;
	Dimension destino[3];
	
	destino[0]<-'Nueva York';
	destino[1]<-'Chile';
	destino[2]<-'Tangamandapio';
	
	Definir costo_destino Como Real;
	Dimension costo_destino[3];
	
	costo_destino[0]<-10;
	costo_destino[1]<-30;
	costo_destino[2]<-75;
	
	//mostrar el destino
	Escribir 'Seleccione el destino de envío:';
	Para i <- 0 Hasta 2 Hacer
		Escribir i , '. ', destino[i], ' Costo: $', costo_destino[i],;
	FinPara
	
	leer i;
	destino_seleccionado<-destino[i];
	costo_envio<-costo_destino[i];
	
	//calcular costo del envío
	envio<-i+(valor_kilo*kilos); //16
	
	precio_final<- envio + precio_original + IVA;
	
	//Desglose de los costos
	Escribir 'Precio del producto: $', precio_original;
	Escribir 'Descuento: $', descuento;
	Escribir 'IVA: $', IVA;
	Escribir 'Descuento por cantidad: $', cantidad;
	Escribir 'Costo de envío: $', costo_destino[i];
	Escribir 'Total: $', precio_final;
	
FinProceso
