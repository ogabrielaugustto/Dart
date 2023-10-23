import 'dart:convert';
import 'dart:io';

lerConsole(texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  if (line is String) {
    line = line.toLowerCase();
  } else if (line == null) {
    print("Nenhum valor fornecido!");
  }
  return line ?? "";
}

int lerConsoleInt(String texto) {
  var numero = int.tryParse(lerConsole(texto));
  if (numero == null) {
    return 0;
  } else {
    return numero;
  }
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    return 0.0;
  } else {
    return numero;
  }
}

calcularIMC(int peso, double altura) {
  double result = peso / (altura * altura);
  result = double.parse(result.toStringAsFixed(2));
  String resultFinal = "";

  if (result < 16) {
    resultFinal = "IMC: $result\nClassificação: Magreza grave";
  } else if (result >= 16 && result < 17) {
    resultFinal = "IMC: $result\nClassificação: Magreza moderada";
  } else if (result >= 17 && result < 18.5) {
    resultFinal = "IMC: $result\nClassificação: Magreza leve";
  } else if (result >= 18.5 && result < 25) {
    resultFinal = "IMC: $result\nClassificação: Saudável";
  } else if (result >= 25 && result < 30) {
    resultFinal = "IMC: $result\nClassificação: Sobrepeso";
  } else if (result >= 30 && result < 35) {
    resultFinal = "IMC: $result\nClassificação: Obesidade Grau I";
  } else if (result >= 35 && result < 40) {
    resultFinal = "IMC: $result\nClassificação: Obesidade Grau II (severa)";
  } else if (result >= 40) {
    resultFinal = "IMC: $result\nClassificação: Obesidade Grau III (mórbida)";
  }
  print(resultFinal);
  return resultFinal;
}
