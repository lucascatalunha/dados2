import 'dart:io';

void main() {
  String? digitado;
  bool back = true;
  do {
    print('Informe uma idade maior q 8 anos.');
    digitado = stdin.readLineSync();
    int? temp = int.tryParse(digitado!);
    if (temp == null) {
      print('Informação inválida.');
      print('=================');
    } else {
      if (temp <= 8) {
        print('Escreva uma idade maior q 8.');
      } else {
        back = false;
      }
    }
  } while (back);
  print('Sua idade é $digitado');
}
