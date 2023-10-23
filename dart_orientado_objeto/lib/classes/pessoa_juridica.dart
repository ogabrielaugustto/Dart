import 'package:dart_orientado_objeto/classes/pessoa_abstract.dart';
import 'package:dart_orientado_objeto/enum/type_notification.dart';

class PessoaJuridica extends Pessoa {
  String _cnpj = "";

  /////////////// SET ////////////////
  void setCpf(String cnpj) {
    _cnpj = cnpj;
  }

  /////////////// GET ////////////////
  String getCpf() {
    return _cnpj;
  }

  /////////////// Construtor ////////////////
  PessoaJuridica(String nome, String endereco, String cnpj,
      {TypeNotification typeNotification = TypeNotification.NOT})
      : super(nome, endereco, typeNotification: typeNotification) {
    _cnpj = cnpj;
  }

  /////////////// Sobrescrita ////////////////
  @override
  String toString() {
    return {
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CNPJ": _cnpj,
      "Tipo Notificação": getTypeNotification()
    }.toString();
  }
}
