import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////////////////////// WHILE //////////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  var op = "";
  var t = 0.0;

  do {
    print("Digite um número ou 'S' para sair!");
    var line = stdin.readLineSync(encoding: utf8);
    op = line ?? "";
    var n = double.tryParse(op);
    if (n != null) {
      t = t + n;
    }
  } while (op != "S");

  print("Digite um número ou 'S' para sair!");
  var line = stdin.readLineSync(encoding: utf8);
  t = 0;

  while (line != 'S') {
    var n = int.parse(line ?? "0");
    t = t + n;
    print("Digite um número ou 'S' para sair!");
    line = stdin.readLineSync(encoding: utf8);
  }

  print(t);

  var i = 0;
  t = 10;

  while (i < t) {
    i = i + 1;
    print(i);
  }

  var numeros = [1, 5, 6, 44, 1, 3, 413, 313, 31, 321];

  for (var numero in numeros) {
    print(numero);
  }

  numeros.forEach((element) {
    print(element);
  });
}
