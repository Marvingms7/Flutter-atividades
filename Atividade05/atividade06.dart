import 'dart:io';

void main() {
  print('Bem vindo ao Petshop!');
  pet("cachorro", nome:"totó", raca:"boderman", idade:36.0);
}
void pet(String texto, {String nome, raca, double idade}){
  print('Seu bichinho é um:');
  print(texto);
  print('Seu nome é:');
  print(nome ?? "desconhecido");
  print('A raça do bichinho é:');
  print(raca ?? "desconhecido");
  print('Sua idade:');
  print(idade ?? 0);
}
