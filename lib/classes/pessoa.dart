import 'package:meu_app_dart/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome;
  String _endereco;
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  Pessoa(this._nome, this._endereco, this._tipoNotificacao);

  String getEndereco() {
    return _endereco;
  }

  String getNome() {
    return _nome;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  @override
  String toString() {
    return {
      "Nome" : _nome,
      "Endereço" : _endereco,
      "Tipo Notificacao": _tipoNotificacao
    }.toString();
  }
}
