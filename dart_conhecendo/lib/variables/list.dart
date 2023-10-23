void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////// TIPOS DE DADOS LIST  ///////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////

  List<String> listString = [];
  var listInt = [1, 10, 50];
  List listDynamic = [];

  print("Tamanho da lista");
  print(listString.length);
  print(listInt.length);
  print(listDynamic.length);

  print(listString);
  print(listInt);
  print(listDynamic);

  print("Adicionar item");
  listString.add("M");
  listString.add("B");
  listInt.add(90);
  listDynamic.add("A");
  listDynamic.add(10);
  listDynamic.add(99.5);
  listDynamic.add(true);
  listDynamic.add(listString[1]);
  listDynamic.add(listString);

  print(listString);
  print(listInt);
  print(listDynamic);

  print("Verifica se a lista está ou não vazia");
  print(listString.contains("B"));
  print(listDynamic.contains(true));

  print("Função where");
  print(listInt);
  print(listInt.where((x) => x > 9 && x < 99));

  print("Outras funções");
  print(listInt.reversed);
}
