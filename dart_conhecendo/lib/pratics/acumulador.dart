// import 'dart:io';

import 'package:meu_app/functions/utils.dart' as utils;

void main(List<String> arguments) {
  var line = utils.lerConsole("Digite um número ou 'S' para sair!");
  List<double> lista = [];
  while (line != 'S' || line != 's') {
    try {
      var number = double.parse(line);
      lista.add(number);
    } catch (e) {
      return print(utils.somaLista(lista));
    }
    line = utils.lerConsole("Digite um número ou 'S' para sair!");
  }
}
