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

	precio_original<-100;
	cupon<-0.10;
	valor_IVA<-1.12;
	descuento_cantidad<-0.05;
	costo_envio<-10;
	kilos<-3;
	valor_kilo<-2;
	
	//calcular el descuento
	descuento<-precio_original-(precio_original*cupon); //90
	
	//calcular el iva
	IVA<-descuento*valor_IVA; //100.80
	
	//calcular descuento por cantidad de productos
	cantidad<-IVA-(IVA*descuento_cantidad); //95.76
	
	//calcular costo del envío
	envio<-costo_envio+(valor_kilo*kilos); //16
	
	//calcular el costo final
	precio_final<-envio+(cantidad*2);
	
	//Desglose de los costos
	Escribir 'Precio del producto: $', precio_original;
	Escribir 'Descuento: $', descuento;
	Escribir 'IVA: $', IVA;
	Escribir 'Descuento por cantidad: $', cantidad;
	Escribir 'Costo de envío: $', envio;
	Escribir 'Total: $', precio_final;
	
FinProceso
