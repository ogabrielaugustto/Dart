import 'package:dart_calculadora_imc/classes/paciente.dart';
import 'package:dart_calculadora_imc/functions/utils.dart';

void execute() {
  print("----- BEM-VINDO A CALCULADORA DE IMC -----");
  var paciente = Paciente();
  paciente.setNome(lerConsole("Digite o nome do aluno: "));
  paciente.setPeso(lerConsoleInt("Qual o seu peso?"));
  paciente.setAltura(lerConsoleDouble("Qual a sua altura?"));

  print("\n----- Confira o Relatório de ${paciente.getNome()} -----");
  calcularIMC(paciente.getPeso(), paciente.getAltura());
}
