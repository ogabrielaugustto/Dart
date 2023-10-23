import 'package:dart_orientado_objeto/classes/pessoa_abstract.dart';
import 'package:dart_orientado_objeto/service/notification_interface.dart';

class NoticationSMS implements NotificationInterface {
  @override
  void sendNotification(Pessoa pessoa) {
    print("Enviando SMS para: ${pessoa.getNome()}");
  }
}
