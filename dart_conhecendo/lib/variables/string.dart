void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////// TIPOS DE DADOS STRING  ///////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////

  String texto1 = "DIO";
  var texto2 = "Trilha de Flutter e Dart na DIO";

  // Imprime no console o texto
  print(texto1);
  print(texto2);

  // Comparação se vazio
  print(texto2.isEmpty);
  print("".isEmpty);
  print(" ".isEmpty);

  // Obtem o tamanho da String
  print(texto1.length);
  print(texto2.length);

  // Maiscula / Minuscula
  print(texto1.toUpperCase());
  print(texto2.toLowerCase());

  // Se uma string contem na outra
  print(texto2.contains(texto1));

  // Obtem parte de ums string
  print(texto2.substring(5)); //pega apartir do 5 caracter
  print(texto2.substring(1, 5)); // inicia no caracter 1 e para no 5

  // Obtem posição de um texto em uma String
  print(texto2.indexOf("Flutter"));
  print(texto2.indexOf("T"));
  print(texto2.indexOf("@"));

  // Substitui uma String em outra
  print(texto2.replaceAll("a", "@"));

  // Quebra uma String por um caracter especifico
  print(texto2.split("a"));
  print("NOME;ENDERECO;CEP".split(";"));

  // Remove espações
  print(" dio ".trim());
  print(" dio ".trimLeft());
  print(" dio ".trimRight());
}
