import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  ////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////// FOR IN OU FOR EACH /////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  var qtd = 0;

  print("Informe a quantidade de números:");
  var line = stdin.readLineSync(encoding: utf8);

  qtd = int.parse(line ?? "0");

  for (var i = 0; i <= qtd; i++) {
    print("Informe a quantidade de números:");
    line = stdin.readLineSync(encoding: utf8);
    var numero = int.parse(line ?? "0");
    var resultado;
    resultado = resultado + numero;
    print(resultado);
  }
}
