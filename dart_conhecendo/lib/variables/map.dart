void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////// TIPOS DE DADOS MAP (DICIONARIO) ////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////

  Map<String, dynamic> map1 =
      <String, dynamic>{}; // Dinamico, aceita qualquer valor
  var map2 = {'zero': 0, 'one': 1, 'two': 2}; // tipado um tipo de valor

  print(map1);
  print(map2);

  print("Obtem valor pela chave");
  print(map2['one']);

  map2.addAll({'ten': 10, 'eleven': 11});
  print(map2);

  print("Se vazio");
  print(map1.isNotEmpty);
  print(map2.isEmpty);

  print("Tamanho");
  print(map2.length);

  print("Contem chave");
  print(map1.containsKey("eleven"));
  print(map2.containsKey("ten"));
  print(map2.containsKey('teste'));

  print("Contem valor");
  print(map2.containsValue(0));
  print(map2.containsValue(22));
  print(map2.containsValue(2));

  map1.addAll({
    "Nome": "Gabriel",
    "Idade": 22,
    "Brasileiro": true,
    "Nascimento": DateTime(2001, 12, 31)
  });

  print(map1);
  print(map1['Idade']);
}
