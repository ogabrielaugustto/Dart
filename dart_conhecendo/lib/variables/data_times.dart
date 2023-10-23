void main(List<String> arguments) {
  /////////////////////////////////////////////////////////////////////////////////////////////////
  //////////////////////////// TIPOS DE DADOS DATE TIMES /////////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////////////////////////////

  DateTime data1 = DateTime.now();
  print(data1);
  data1 = DateTime.parse("2022-02-01 00:00:00");
  print(data1);

  // Partes da data
  print(data1);
  print(data1.day);
  print(data1.month);
  print(data1.year);
  print(data1.year);
  print(data1.hour);
  print(data1.microsecond);
  print(data1.second);

  // Dia da semana
  print(data1.weekday);
}
