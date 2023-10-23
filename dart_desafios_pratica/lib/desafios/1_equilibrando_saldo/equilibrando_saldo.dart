import 'dart:io';

void main() {
  double saldoAtual = double.parse(stdin.readLineSync()!);
  double valorDeposito = double.parse(stdin.readLineSync()!);
  double valorRetirada = double.parse(stdin.readLineSync()!);

  //TODO: Calcular o saldo atualizado de acordo com a descrição deste desafio.
  saldoUpdate(saldoAtual, valorDeposito, valorRetirada) {
    double saldoAtualizado = (saldoAtual + valorDeposito) - valorRetirada;
    saldoAtualizado = double.parse(saldoAtualizado.toStringAsFixed(1));
    print("Saldo atualizado na conta: $saldoAtualizado");
  }

  //TODO: Imprimir o a saída de conforme a tabela de exemplos (uma casa decimal).
  saldoUpdate(saldoAtual, valorDeposito, valorRetirada);
}
