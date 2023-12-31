import 'package:meu_app_dart/classes/pessoa_fisica.dart';
import 'package:meu_app_dart/classes/pessoa_juridica.dart';
import 'package:meu_app_dart/enum/tipo_notificacao.dart';
import 'package:meu_app_dart/service/enviar_notificacao.dart';

void main(List<String> arguments) {

  //classe abstrata não pode ser instanciada
  //var pessoa = Pessoa("Mauro","Endereço");
  //print(pessoa.toString());

  var enviarNotificacao = EnviarNotificacao();

  var pessoaFisica = PessoaFisica("Mauro","Endereço", "123456789", tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaFisica.toString());

  var pessoaJuridica = PessoaJuridica("Empresa ALBR","Endereço", "11111");
  print(pessoaJuridica.toString());

  enviarNotificacao.notificar(pessoaFisica);
  enviarNotificacao.notificar(pessoaJuridica);

}
