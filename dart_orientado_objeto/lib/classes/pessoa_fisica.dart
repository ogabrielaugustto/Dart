import 'package:dart_orientado_objeto/classes/pessoa_abstract.dart';
import 'package:dart_orientado_objeto/enum/type_notification.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  /////////////// SET ////////////////
  void setCpf(String cpf) {
    _cpf = cpf;
  }

  /////////////// GET ////////////////
  String getCpf() {
    return _cpf;
  }

  /////////////// Construtor ////////////////
  PessoaFisica(String nome, String endereco, String cpf,
      {TypeNotification typeNotification = TypeNotification.NOT})
      : super(nome, endereco, typeNotification: typeNotification) {
    _cpf = cpf;
  }

  /////////////// Sobrescrita ////////////////
  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf,
      "Tipo Notificação": getTypeNotification()
    }.toString();
  }
}
