import 'package:dart_orientado_objeto/classes/pessoa_fisica.dart';
import 'package:dart_orientado_objeto/classes/pessoa_juridica.dart';
import 'package:dart_orientado_objeto/enum/type_notification.dart';
import 'package:dart_orientado_objeto/service/send_notification.dart';

void main(List<String> arguments) {
  var pessoaFisica = PessoaFisica("Gabriel", "Turmalina, 250", "000.000.000-00",
      typeNotification: TypeNotification.SMS);
  print(pessoaFisica);

  var pessoaJuridica = PessoaJuridica(
      "Empresa 1", "Turmalina, 250", "000.000/0001-00",
      typeNotification: TypeNotification.EMAIL);
  print(pessoaJuridica);

  SendNotification sendNotification = SendNotification();
  sendNotification.notificar(pessoaFisica);
  sendNotification.notificar(pessoaJuridica);
}
