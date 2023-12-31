import 'package:meu_app_dart/classes/pessoa_abstract.dart';

import '../enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {

  String _cpf;

  PessoaFisica(String nome, String endereco, this._cpf, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}):
        super(nome, endereco, tipoNotificacao: tipoNotificacao);

  @override
  String toString() {
    return {
      "Tipo" : "Fisica",
      "Nome" : super.getNome(),
      "Endereço" : super.getEndereco(),
      "CPF" : _cpf,
      "Tipo Notificacao": super.getTipoNotificacao()
    }.toString();
  }
}
