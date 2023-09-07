abstract class Empleado_Base {
  String nombre;
  int edad;
  String puesto;
  double salario;

  Empleado_Base(this.nombre, this.edad, this.puesto, this.salario);

  double calcularBonificacion();
}
