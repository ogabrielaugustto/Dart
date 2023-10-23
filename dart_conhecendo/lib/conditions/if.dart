import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  ////////////////////////////////////////////// IF ///////////////////////////////////////////////
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

  if (media >= 7) {
    print("O aluno passou com a nota: $media");
  } else if (media >= 5) {
    print("O aluno está de recuperação");
  } else {
    print("O aluno reprovou com a nota: $media");
  }

  // IF  Ternário
  var resultado = (prova1 >= 7) ? "O aluno passou" : "O aluno reprovou";
  print(resultado);
}
