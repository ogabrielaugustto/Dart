void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////// TIPOS DE DADOS DOUBLE  ///////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  double numero1 = 10.1;
  var numero2 = 11.1;

  print("Removev ponto flutuante");
  print(numero1.truncate());
  print(numero2.truncate());

  print('Converte para inteiro');
  print(numero1.toInt());
  print(numero2.toInt());

  print('Arredonda para cima');
  print(numero1.ceil());
  print(numero2.ceil());

  print('Arredonda para baixo');
  print(numero1.floor());
  print(numero2.floor());

  print("Retorna se o número é finito");
  print(numero1.isFinite);
  print(numero2.isFinite);

  print("Retorna se o número é um número válido");
  print(numero1.isNaN);
  print(numero2.isNaN);

  print("Retorna se o número é negativo");
  print((numero1 * -1).isNegative);
  print(numero2.isNegative);

  print("Converte String para dobule");
  print(double.parse("10"));
  // print(double.parse("teste"));
  print(double.tryParse("teste")); //o tryParse se for dar erro retona como null
}
