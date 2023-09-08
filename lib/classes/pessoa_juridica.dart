import 'package:meu_app_dart/classes/pessoa_abstract.dart';
import 'package:meu_app_dart/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {

  String _cnpj;

  PessoaJuridica(String nome, String endereco, this._cnpj, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}):
        super(nome, endereco, tipoNotificacao: tipoNotificacao);

  @override
  String toString() {
    return {
      "Tipo" : "Juridica",
      "Nome" : super.getNome(),
      "Endereço" : super.getEndereco(),
      "CNPJ" : _cnpj,
      "Tipo Notificacao": super.getTipoNotificacao()
    }.toString();
  }
}
