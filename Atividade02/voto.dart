void main() {
  var idade = 19;
  var analfabeto = 'não';
  if ((idade < 16) && (analfabeto == 'não')){
     print('Você não possui idade para votar!');
  } else if (((idade >= 18) && (idade <= 69) && (analfabeto == 'não'))){
    print('Você possui idade entre 18 e 70 anos, seu voto é obrigatorio!');
  } else if ((idade > 69) || (analfabeto == 'sim')){
    print('Seu voto é facultativo!');
  } else if ((idade >= 16) && (idade < 18)){
    print('Seu voto é facultativo!');
  }  
}