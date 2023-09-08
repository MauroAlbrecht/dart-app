import 'package:meu_app_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_dart/service/interfaces/notificacao_interface.dart';

class NotificacaoEmail implements NotificacaoInterface {

  @override
  void enviarNotificacao(Pessoa pessoa) {
    
    print("Enviando EMAIL para ${pessoa.getNome()}");
  }

}
