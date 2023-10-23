void main(List<String> arguments) {
  printName("Gabriel");
  printName("Gabriel", sobrenome: "Augusto");
}

// Colocando entre chaves torna o parametro opcional
void printName(String name, {String? sobrenome}) {
  print("My name is: $name");
  if (sobrenome != null) {
    print("My lastname is: $sobrenome");
  }
}
