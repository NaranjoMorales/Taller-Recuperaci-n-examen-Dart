class Empleado {
  String cedula;
  double sueldoBase;
  double pagoHoraExtra;
  int horasExtra;
  bool casado;
  int numeroHijos;

  Empleado(this.cedula, this.sueldoBase, this.pagoHoraExtra, this.horasExtra, this.casado, this.numeroHijos);

  double calcularPagoHorasExtra() {
    return pagoHoraExtra * horasExtra;
  }

  double calcularSueldoBruto() {
    return sueldoBase + calcularPagoHorasExtra();
  }

  double calcularRetenciones() {
    double porcentajeRetenciones = 0;
    if (casado) {
      porcentajeRetenciones += 2;
    }
    porcentajeRetenciones += numeroHijos;
    
    return (porcentajeRetenciones / 100) * calcularSueldoBruto();
  }

  double calcularSueldoNeto() {
    return calcularSueldoBruto() - calcularRetenciones();
  }

  void mostrarInformacionBasica() {
    print("Cedula: $cedula");
      print("Sueldo Base: $sueldoBase");
       print("Casado: $casado");
    print("Numero de Hijos: $numeroHijos");
  }

  void mostrarTodaInformacion() {
    print("Cedula: $cedula");
  
    print("Pago por Hora Extra: $pagoHoraExtra");
    print("Horas Extra: $horasExtra");
   
    print("Sueldo Bruto: ${calcularSueldoBruto()}");
    print("Retenciones: ${calcularRetenciones()}");
    print("Sueldo Neto: ${calcularSueldoNeto()}");
  }
}
