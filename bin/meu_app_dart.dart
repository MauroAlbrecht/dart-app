import 'package:meu_app_dart/classes/pessoa.dart';
import 'package:meu_app_dart/classes/pessoa_fisica.dart';
import 'package:meu_app_dart/classes/pessoa_juridica.dart';

void main(List<String> arguments) {

  //classe abstrata não pode ser instanciada
  //var pessoa = Pessoa("Mauro","Endereço");
  //print(pessoa.toString());

  var pessoaFisica = PessoaFisica("Mauro","Endereço", "123456789");
  print(pessoaFisica.toString());

  var pessoaJuridica = PessoaJuridica("Empresa ALBR","Endereço", "11111");
  print(pessoaJuridica.toString());
}
