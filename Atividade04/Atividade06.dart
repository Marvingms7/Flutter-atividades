import 'dart:io';

void main() {
  boasvinda();
  stdout.write('Seu bixinho é um: ');
  var pet = stdin.readLineSync();
  stdout.write('Seu pet é um $pet');
}

void boasvinda() {
  print('Bem vindo ao Petshop!');
}
