import 'package:dart_orientado_objeto/classes/pessoa_abstract.dart';
import 'package:dart_orientado_objeto/service/notification_interface.dart';

class NoticationEMAIL implements NotificationInterface {
  @override
  void sendNotification(Pessoa pessoa) {
    print("Enviando EMAIL para: ${pessoa.getNome()}");
  }
}
