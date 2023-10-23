void main(List<String> arguments) {
  print("Print comum de funcao!");
  print(incrementar(10));
  print(decrementar(10));

  // Passando funcao como parametro
  print("\nPassando a funcao como parametro!");
  print(executar(10, incrementar));
  print(executar(10, decrementar));
}

int executar(int numero, func) {
  return func(numero);
}

int incrementar(int numero) {
  return numero + 1;
}

int decrementar(int numero) {
  return numero - 1;
}
