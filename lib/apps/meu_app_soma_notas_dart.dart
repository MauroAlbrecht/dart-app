import 'package:meu_app_dart/classes/aluno.dart';
import 'package:meu_app_dart/exception/nome_invalido_exception.dart';
import 'package:meu_app_dart/utils/console_utils.dart';

void main(List<String> arguments) {
  print("Bem vindo ao sistema de notas");

  var nome = ConsoleUtils.lerStringComMsg("Digite o nome do aluno");

  if (nome.trim() == '') {
    throw NomeInvalidoException();
  }

  var aluno = Aluno(nome);

  double? nota;

  do {
    nota = ConsoleUtils.lerDoubleComMsg("Digite a nota ou S para SAIR");
    if (nota != null) {
      aluno.addNota(nota);
    }
  } while (nota != null);

  print(aluno.getNotas());
}
