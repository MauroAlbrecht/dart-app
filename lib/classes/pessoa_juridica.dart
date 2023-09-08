import 'package:meu_app_dart/classes/pessoa.dart';

class PessoaJuridica extends Pessoa {

  String _cnpj;

  PessoaJuridica(String nome, String endereco, this._cnpj): super(nome, endereco);

  @override
  String toString() {
    return {
      "Tipo" : "Juridica",
      "Nome" : super.getNome(),
      "Endereço" : super.getEndereco(),
      "CNPJ" : _cnpj
    }.toString();
  }
}
