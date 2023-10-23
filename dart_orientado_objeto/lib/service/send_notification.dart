import 'package:dart_orientado_objeto/classes/pessoa_abstract.dart';
import 'package:dart_orientado_objeto/enum/type_notification.dart';
import 'package:dart_orientado_objeto/service/impl/notification_email.dart';
import 'package:dart_orientado_objeto/service/impl/notification_push.dart';
import 'package:dart_orientado_objeto/service/impl/notification_sms.dart';
import 'package:dart_orientado_objeto/service/notification_interface.dart';

class SendNotification {
  NotificationInterface? notification;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTypeNotification()) {
      case TypeNotification.EMAIL:
        notification = NoticationEMAIL();
        break;
      case TypeNotification.PUSH_NOTIFICATION:
        notification = NoticationPUSH();
        break;
      case TypeNotification.SMS:
        notification = NoticationSMS();
        break;
      default:
        break;
    }

    if (notification != null) {
      notification!.sendNotification(pessoa);
    } else {
      print("Pessos sem tipo de notificação");
    }
  }
}
