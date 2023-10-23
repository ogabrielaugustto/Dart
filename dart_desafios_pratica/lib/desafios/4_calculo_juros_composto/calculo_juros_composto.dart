import 'dart:io';
import 'dart:math';

void main() {
  var valorInicial = double.parse(stdin.readLineSync()!);
  var taxaJuros = double.parse(stdin.readLineSync()!);
  var periodo = int.parse(stdin.readLineSync()!);

  //TODO: Iterar, baseado no período em anos, para calculo do valorFinal com os juros.

  calcularJurosComposto(valorInicial, taxaJuros, periodo) {
    var valorFinal = valorInicial * pow(1 + taxaJuros, periodo);
    valorFinal = double.parse(valorFinal.toStringAsFixed(2));
    return print("Valor final do investimento: R\$ $valorFinal");
  }

  calcularJurosComposto(valorInicial, taxaJuros, periodo);
}
