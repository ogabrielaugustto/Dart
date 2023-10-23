void main(List<String> arguments) {
  print("Meu texto");
  printData(soma(10, 20).toString());
}

// Comum
// void printData(String texto) {
//   print(texto);
// }

void printData(String texto) => print(texto);

int soma(int numero1, int numero2) => numero1 + numero2;
