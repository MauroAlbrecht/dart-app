import 'package:meu_app_dart/classes/pessoa.dart';
import 'package:meu_app_dart/classes/pessoa_fisica.dart';

void main(List<String> arguments) {
  var pessoa = Pessoa("Mauro","Endereço");
  print(pessoa.toString());

  var pessoaFisica = PessoaFisica("Mauro","Endereço", "123456789");
  print(pessoaFisica.toString());
}
