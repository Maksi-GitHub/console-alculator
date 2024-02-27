import 'dart:io';
import 'package:dart_eval/dart_eval.dart';

void main() {
  while (true) {
    print('Введите выражение (или "exit" для выхода): ');
    String input = stdin.readLineSync()!;

    if (input.toLowerCase() == 'exit') {
      print('До свидания!');
      break;
    }

    try {
      final result = eval(input);

      print('Результат: $result');
    } catch (e) {
      print('Ошибка, введите данные корректо. Например: 2+2 $e');
    }
  }
}