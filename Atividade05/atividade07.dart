class Veiculo{
  double velocidade;
  String cor;
  double peso;
  Veiculo(this.velocidade, this.cor, this.peso);
}
class Carro extends Veiculo{
  double aro;
  Carro(double velocidade, String cor, double peso, this.aro ): super(velocidade, cor, peso);
}
class Aviao extends Veiculo{
  double numero_da_helice;
  Aviao(double velocidade, String cor, double peso, this.numero_da_helice ): super(velocidade, cor, peso);
}
void main(){
  print('Carro:');
  Carro carro1 = Carro(200, 'Vermelho', 2000, 22);
  print('Velocidade total: ${carro1.velocidade}');
  print('Cor: ${carro1.cor}');
  print('Peso: ${carro1.peso}');
  print('Áro: ${carro1.aro}');
  print('#=' * 40);
  print('Avião:');
  Aviao aviao1 = Aviao(1200, 'Branco', 412000, 2);
  print('Velocidade total: ${aviao1.velocidade}');
  print('Cor: ${aviao1.cor}');
  print('Peso: ${aviao1.peso}');
  print('Número de helices: ${aviao1.numero_da_helice}');
}