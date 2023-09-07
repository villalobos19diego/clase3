import 'Persona.dart';
import 'Empleado.dart';

void main() {
  Persona persona1 = Persona("Juan", 30);
  Empleado empleado1 = Empleado("Pedro", 25, "Director", 80000, 10000);
  Empleado empleado2 = Empleado("María", 28, "Profesora", 60000, 8000);
  Empleado empleado3 = Empleado("Luis", 35, "Limpieza", 40000, 7500);

  imprimirInformacion(persona1);
  imprimirInformacion(empleado1);
  imprimirInformacion(empleado2);
  imprimirInformacion(empleado3);
}

void imprimirInformacion(dynamic entidad) {
  print("Información:");
  print(entidad);
  if (entidad is Empleado) {
    print("Bonificación: ${entidad.calcularBonificacion()}");
    print("Salario total: ${entidad.calcularSalarioTotal()}");
  }
}
