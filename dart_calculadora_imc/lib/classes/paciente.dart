import 'dart:core';

class Paciente {
  String _nome = "";
  int _peso = 0;
  double _altura = 0.0;

  /////////////// SET ////////////////
  void setNome(String nome) {
    _nome = nome;
  }

  void setPeso(int peso) {
    _peso = peso;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  /////////////// GET ////////////////
  String getNome() {
    return _nome;
  }

  int getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }
}
