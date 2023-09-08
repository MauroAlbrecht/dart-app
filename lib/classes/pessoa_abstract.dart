import 'package:meu_app_dart/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _cell = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  Pessoa(String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  String getEndereco() {
    return _endereco;
  }

  String getNome() {
    return _nome;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  String getToken() {
    return _token;
  }

  String getCell() {
    return _cell;
  }

  String getEmail() {
    return _email;
  }

  @override
  String toString() {
    return {"Nome": _nome, "Endereço": _endereco, "Tipo Notificacao": _tipoNotificacao}.toString();
  }
}
