import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  /////////////////////////////////////////// IF TERNARIO /////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  print("Informe a primeira nota: ");
  var line1 = stdin.readLineSync(encoding: utf8);
  print(line1);

  print("Informe a segunda nota: ");
  var line2 = stdin.readLineSync(encoding: utf8);
  print(line2);

  var prova1 = int.parse(line1 ?? "0");
  var prova2 = int.parse(line1 ?? "0");
  var media = (prova1 + prova2) / 2;

  var resultado = (media >= 7) ? "O aluno passou" : "O aluno reprovou";
  print(resultado);
}
