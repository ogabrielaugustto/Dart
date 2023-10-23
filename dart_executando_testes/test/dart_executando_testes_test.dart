import 'package:dart_executando_testes/classes/viacep.dart';
import 'package:dart_executando_testes/dart_executando_testes.dart' as app;
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test/test.dart';

import 'dart_executando_testes_test.mocks.dart';

// Todos os arquivos para teste em dar precisam finalizar o nome do arquivo com test
@GenerateMocks([mockViaCEP])
void main() {
  test('Calcula o valor do produto com desconto sem porcentagem', () {
    expect(app.calcularDesconto(1000, 150, false), equals(850));
  });

  test(
      'Calcula o valor do produto com desconto sem porcentagem passando valor do produto zerado',
      () {
    expect(() => app.calcularDesconto(0, 150, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calcula o valor do produto com desconto com porcentagem', () {
    expect(app.calcularDesconto(1000, 15, true), 850);
  });

  test('Calcula o valor do produto com desconto zerado sem porcentagem', () {
    expect(() => app.calcularDesconto(1000, 0, true),
        throwsA(TypeMatcher<ArgumentError>()));
  });

  group("Calcula o valor do produto com desconto: ", () {
    var valuerToTest = {
      {'valor': 1000, 'desconto': 150, 'percentual': false}: 850,
      {'valor': 1000, 'desconto': 15, 'percentual': true}: 850,
    };

    valuerToTest.forEach((values, expected) {
      test('Entrada: $values Esperado: $expected', () {
        expect(
            app.calcularDesconto(
                double.parse(values["valor"].toString()),
                double.parse(values["desconto"].toString()),
                values["percentual"] == true),
            equals(expected));
      });
    });
  });

  group(
      "Calcula o valor do produto informando valores zerados, deve gerar erro!",
      () {
    var valuerToTest = {
      {'valor': 0, 'desconto': 150, 'percentual': false},
      {'valor': 1000, 'desconto': 0, 'percentual': true},
    };

    for (var values in valuerToTest) {
      test('Entrada: $values', () {
        expect(
            () => app.calcularDesconto(
                double.parse(values["valor"].toString()),
                double.parse(values["desconto"].toString()),
                values["percentual"] == true),
            throwsA(TypeMatcher<ArgumentError>()));
      });
    }
  });

  test('Testar conversão para uppercase', () {
    expect(app.convertToUpper("dio"), equals("DIO"));
  });

  test('Testar conversão para uppercase teste 2', () {
    expect(app.convertToUpper("dio"), equalsIgnoringCase("dio"));
  });

  test('Valor maior que 50', () {
    expect(app.retornaValor(50), greaterThanOrEqualTo(50));
  });

  test('Começa com', () {
    expect(app.convertToUpper("dio"), startsWith("D"));
  });

  test('Valor diferente', () {
    expect(app.retornaValor(50), isNot(equals(49)));
  });

  test('Retornar CEP', () async {
    MockmockViaCEP mockmockViaCEP = MockmockViaCEP();
    when(mockmockViaCEP.retonarCEP("06410020"))
        .thenAnswer((realInvocation) => Future.value({
              "cep": "06410-020",
              "logradouro": "Rua Turmalina",
              "complemento": "",
              "bairro": "Jardim dos Camargos",
              "localidade": "Barueri",
              "uf": "SP",
              "ibge": "3505708",
              "gia": "2069",
              "ddd": "11",
              "siafi": "6213"
            }));
    var body = await mockmockViaCEP.retonarCEP("06410020");
    expect(body["bairro"], equals("Jardim dos Camargos"));
    expect(body["logradouro"], equals("Rua Turmalina"));
  });
}

class mockViaCEP extends Mock implements viaCEP {}
