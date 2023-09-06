import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print("Informe a nota da prova 1");
  var line = stdin.readLineSync(encoding: utf8);
  var prova1 = int.parse(line ?? "0");

  print("Informe a nota da prova 2");
  line = stdin.readLineSync(encoding: utf8);
  var prova2 = int.parse(line ?? "0");

  print(prova1);
  print(prova2);

  var media = (prova1 + prova2) / 2;

  if (media >= 7) {
    print("O aluno passou com a nota: $media");
  } else if (media >= 5) {
    print("O aluno está de recuperação com a nota: $media");
  } else {
    print(("O aluno reprovou com a nota: $media"));
  }
}
