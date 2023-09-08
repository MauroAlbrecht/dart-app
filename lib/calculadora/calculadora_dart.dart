import 'dart:convert';
import 'dart:io';

void calculadora(List<String> arguments) {
  print("Bem vindo a nossa Calculadora");
  print("Informe o primeiro número");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo número");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação matemática(+, -, *, /)");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "0";

  double resultado = 0;

  switch(operacao){
    case "+":
      resultado = numero1 + numero2;
      break;
    case "-":
      resultado = numero1 - numero2;
      break;
    case "*":
      resultado = numero1 * numero2;
      break;
    case "/":
      resultado = numero1 / numero2;
      break;
    default:
      print("Operação Inválida");
      exit(0);
  }

  print("Resultado = $numero1 $operacao $numero2 = $resultado");
}
