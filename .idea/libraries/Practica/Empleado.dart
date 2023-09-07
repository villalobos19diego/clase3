import 'Empleado_Base.dart';

class Empleado implements Empleado_Base {
  @override
  String nombre;
  @override
  int edad;
  @override
  String puesto;
  @override
  double salario;
  double bonificacion;

  Empleado(this.nombre, this.edad, this.puesto, this.salario, this.bonificacion);

  @override
  double calcularBonificacion() => bonificacion;

  double calcularSalarioTotal() => salario + bonificacion;

  @override
  String toString() =>
      'Nombre: $nombre, Edad: $edad, Puesto: $puesto, Salario: $salario, Bonificación: $bonificacion';
}
