import 'dart:convert';
import 'package:http/http.dart' as http;

class viaCEP {
  Future<Map> retonarCEP(String cep) async {
    var uri = Uri.parse("https://viacep.com.br/ws/$cep/json/");
    var retorno = await http.get(uri);
    var decodedResponse = jsonDecode(utf8.decode(retorno.bodyBytes)) as Map;
    print(decodedResponse);
    return decodedResponse;
  }
}
