void main() {
  List fruta = ['Maçã', 'Melancia', 'Laranja', 'Banana', 'Goiaba'];
  List preco = [2.00, 5.00, 1.00, 1.00, 1.50];
  int posicao = 1;
  Map caixa = {fruta[posicao]: preco[posicao]};
  print(caixa);   
}