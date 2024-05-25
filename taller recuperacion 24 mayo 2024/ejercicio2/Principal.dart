
/* Crear un programa que modele la información que una empresa mantiene sobre cada empleado:
 cedula, sueldo base, pago por hora extra, horas extra realizadas en el mes, retenciones casado 
 o no y número de hijos. El programa deberá proporcionar los datos siguientes:
• Cálculo correspondiente a las horas extra realizadas.
• Cálculo del sueldo bruto.
• Cálculo de las retenciones, teniendo en cuenta que el porcentaje de retención que hay que aplicar 
es el tipo menos 2 puntos si el empleado está casado y menos 1 punto por cada hijo que tenga; el 
porcentaje se aplica sobre todo el sueldo bruto.
• visualización de la información básica del empleado.
• visualización de toda la información del empleado. La básica más el sueldo base, el complemento por
 horas extra, el sueldo bruto, la retención y el sueldo neto.*/
import 'dart:io';
import 'Empleado.dart';

 void main(){
  bool f=true;
     Empleado empleado1 = Empleado("123456789", 1500, 10, 8, true, 2);
   do{
    print("a. informacion basica del empleado");
    print("b. ver toda la informacion del empleado");
    print("c. salir");
    print("que deseas hacer?");
    dynamic opcion=stdin.readLineSync();
    switch(opcion){
      case 'a':
      empleado1.mostrarInformacionBasica();
     
      break;
      case 'b':
         
         print("Pago por Horas Extra: ${empleado1.calcularPagoHorasExtra()}");
        print("Sueldo Bruto: ${empleado1.calcularSueldoBruto()}");
        print("Retenciones: ${empleado1.calcularRetenciones()}");
        print("Sueldo Neto: ${empleado1.calcularSueldoNeto()}");
        empleado1.mostrarTodaInformacion();
      break;
      
      case 'c':
        f=false;
      break;
    }

   }while(f);

  
 }

 
