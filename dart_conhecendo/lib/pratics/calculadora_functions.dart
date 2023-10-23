/////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////// CALCULADORA COM FUNCTIONS /////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////
import 'dart:io';
import 'package:meu_app/functions/utils.dart' as utils;

void main(List<String> arguments) {
  print("Bem-vindo a calculadora!");
  var n1 = (utils.lerConsoleDouble("Informe o primeiro número:"));
  var n2 = (utils.lerConsoleDouble("Informe o segundo número: "));
  var ope = utils.lerConsole(
      "Qual operação deseja realizar? \n\n1 - Soma \n2 - Subtração \n3 - Multiplicação \n4 - Divisão\n");
  calcular(ope, n1, n2);
}

void calcular(ope, n1, n2) {
  var result = 0;
  switch (ope) {
    case "1":
      result = utils.soma(n1, n2);
      break;
    case "2":
      result = utils.sub(n1, n2);
      break;
    case "3":
      result = utils.mult(n1, n2);
      break;
    case "4":
      result = utils.div(n1, n2);
      break;
    default:
      print("Operação Inválida!");
      exit(0);
  }
  print("\nResultado: $result");
}
