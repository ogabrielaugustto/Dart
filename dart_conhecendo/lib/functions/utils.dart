import 'dart:convert';
import 'dart:io';

lerConsole(texto) {
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  if (line is String) {
    line = line.toLowerCase();
  } else if (line == null) {
    print("Nenhum valor fornecido!");
  }
  return line ?? "";
}

double lerConsoleDouble(String texto) {
  var numero = double.tryParse(lerConsole(texto));
  if (numero == null) {
    return 0.0;
  } else {
    return numero;
  }
}

soma(numero1, numero2) {
  return numero1 + numero2;
}

somaLista(List<double> lista) {
  double t = 0;
  for (var n in lista) {
    t = soma(t, n);
  }
  return t;
}

sub(numero1, numero2) {
  return numero1 - numero2;
}

mult(numero1, numero2) {
  return numero1 * numero2;
}

div(numero1, numero2) {
  if (numero2 == 0) {
    print("Nao é possível dividir por '0'");
    exit(0);
  } else {
    return numero1 / numero2;
  }
}

int fatorial(int numero) {
  if (numero == 1) {
    return 1;
  }
  return numero * fatorial(numero - 1);
}
