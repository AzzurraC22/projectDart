//ESERCIZIO FIBONACCI

import 'package:lotr_cli/lotr_cli.dart' as lotr_cli;

void main(List<String> arguments) {
  final f = lotr_cli.Fibonacci(count: 5);
  final l = f.calc();
  print(l);
}

