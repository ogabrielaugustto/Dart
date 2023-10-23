void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////// TIPOS DE DADOS INTEIROS  ///////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////
  int numero1 = 1;
  int numero2 = 2;

  print("Retorna verdadeiro se e somente se esse inteiro for par");
  print(numero1.isEven);
  print(numero2.isEven);

  print("Retorna verdadeiro se e somente se este inteiro for ímpar");
  print(numero1.isOdd);
  print(numero2.isOdd);

  print("Retorna se o número é finito");
  print(numero1.isFinite);

  print("Retorna se o número é infinito");
  print(double.infinity);

  print("Retorna se o número é um número válido");
  print(numero1.isNaN);

  print("Retorna se o número é negativo");
  print((numero1 * -1).isNegative);
  print(numero1.isNegative);

  print("Converte String para inteiro");
  print(int.parse("10"));
  print(int.parse("teste"));
  print(int.tryParse("teste")); //o tryParse se for dar erro retona como null

  List<String> lista =
      []; //Declarei que é string só vai receber string na lista
  lista.add("s");

  List<int> lista2 = []; //Declarei que é int só vai receber int na lista
  lista2.add(3);

  var lista3 = []; // neste caso se torna uma lista dinamica, recebe tudo
  lista3.add(2);
  lista3.add("dasdasd");
}
