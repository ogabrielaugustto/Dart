import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  ///////////////////////////////////////// CALCULADORA ///////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////

  print("Bem-vindo a calculadora!");
  print("Informe o primeiro número:");
  var result = 0;
  var line = stdin.readLineSync(encoding: utf8);
  var n1 = int.parse(line ?? "0");

  print("Informe o segundo número: ");
  line = stdin.readLineSync(encoding: utf8);
  var n2 = int.parse(line ?? "0");

  print(
      "Qual operação deseja realizar? \n\n1 - Soma \n2 - Subtração \n3 - Multiplicação \n4 - Divisão\n");
  var ope = stdin.readLineSync(encoding: utf8);

  if (ope != null) {
    ope = ope.toLowerCase(); // Converta a string para minúsculas
  } else {
    print("Nenhuma entrada fornecida.");
  }

  switch (ope) {
    case "1":
      result = n1 + n2;
      break;
    case "2":
      result = n1 - n2;
      break;
    case "3":
      result = n1 * n2;
      break;
    case "4":
      result = (n1 / n2) as int;
      break;
    default:
      print("Operação Inválida!");
      exit(0);
  }

  if (ope == "1" || ope == "soma") {
    result = n1 + n2;
  } else if (ope == "2" || ope == "subtração" || ope == "subtracao") {
    result = n1 - n2;
  } else if (ope == "3" || ope == "multiplicação" || ope == "multiplicacao") {
    result = n1 * n2;
  } else if (ope == "4" || ope == "divisão" || ope == "divisao") {
    result = (n1 / n2) as int;
  } else {
    print("Operação Inválida!");
  }

  print("\nResultado: $result");
}
