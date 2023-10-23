// Classe abstrata nao pode ser instaciada, apenas usada como molde/herança
import 'package:dart_orientado_objeto/enum/type_notification.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _celular = "";
  String _token = "";
  TypeNotification _typeNotification = TypeNotification.NOT;

  /////////////// SET ////////////////
  void setNome(String nome) {
    _nome = nome;
  }

  void setEndereco(String endereco) {
    _endereco = endereco;
  }

  void setEmail(String email) {
    _email = email;
  }

  void setCelular(String celular) {
    _celular = celular;
  }

  void setToken(String token) {
    _token = token;
  }

  void setTypeNotification(TypeNotification typeNotification) {
    _typeNotification = typeNotification;
  }

  /////////////// GET ////////////////
  String getNome() {
    return _nome;
  }

  String getEndereco() {
    return _endereco;
  }

  String getEmail() {
    return _email;
  }

  String getCelular() {
    return _celular;
  }

  String getToken() {
    return _token;
  }

  TypeNotification getTypeNotification() {
    return _typeNotification;
  }

  /////////////// Construtor ////////////////
  Pessoa(String nome, String endereco,
      {TypeNotification typeNotification = TypeNotification.NOT}) {
    _nome = nome;
    _endereco = endereco;
    _typeNotification = typeNotification;
  }

  /////////////// Sobrescrita ////////////////
  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereço": _endereco,
      "Tipo Notificação": _typeNotification
    }.toString();
  }
}
