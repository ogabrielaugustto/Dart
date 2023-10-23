import 'dart:io';
import 'package:dart_tratamento_excecoes/exception/nome_invalido_exception.dart';
import 'package:dart_tratamento_excecoes/models/aluno.dart';
import 'package:dart_tratamento_excecoes/models/console_utils.dart';

void execute() {
  print("----- BEM-VINDO AO SISTEMA DE NOTAS -----");
  String nome = ConsoleUtils.lerStringComTexto("Digite o nome do aluno: ");
  try {
    if (nome.trim() == "") {
      throw NomeInvalidoException();
    }
  } on NomeInvalidoException {
    print(NomeInvalidoException);
    exit(0);
  } catch (e) {
    print(e);
    exit(0);
  }
  var aluno = Aluno(nome);
  double? nota;
  do {
    nota = ConsoleUtils.lerDoubleComTextoComSaida(
        "Digite a nota ou S para sair", "S");
    if (nota != null) {
      aluno.addNota(nota);
    }
  } while (nota != null);
  print("Notas: ${aluno.getNotas()}");
  print("Média: ${aluno.retornaMedia()}");
  if (aluno.aprovado(7)) {
    print("O aluno ${aluno.getNome()} aprovado!");
  } else {
    print("O aluno ${aluno.getNome()} reprovado!");
  }
}
