import 'package:meu_app_dart/classes/pessoa.dart';

class PessoaFisica extends Pessoa {

  String _cpf;

  PessoaFisica(String nome, String endereco, this._cpf): super(nome, endereco);

  @override
  String toString() {
    return {
      "Nome" : super.getNome(),
      "Endereço" : super.getEndereco(),
      "CPF" : _cpf
    }.toString();
  }
}
