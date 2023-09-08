import 'package:meu_app_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_dart/enum/tipo_notificacao.dart';
import 'package:meu_app_dart/service/impl/notificacao_email.dart';
import 'package:meu_app_dart/service/impl/notificacao_push.dart';
import 'package:meu_app_dart/service/impl/notificacao_sms.dart';
import 'package:meu_app_dart/service/interfaces/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacao;

  void notificar(Pessoa pessoa) {

    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
        notificacao = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH:
        notificacao = NotificacaoPush();
        break;
      case TipoNotificacao.SMS:
        notificacao = NotificacaoSms();
        break;
      default:
        print("Pessoa sem tipo de notificação!");
        return;
    }

    if (notificacao != null) {
      notificacao!.enviarNotificacao(pessoa);
    }
  }
}
