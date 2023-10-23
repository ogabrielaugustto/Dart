import 'package:dart_calculadora_imc/functions/utils.dart';
import 'package:test/test.dart';

void main() {
  test('Calcula o IMC', () {
    expect(calcularIMC(90, 1.80), "IMC: 27.78\nClassificação: Sobrepeso");
  });
}
