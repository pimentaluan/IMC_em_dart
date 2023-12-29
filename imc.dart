import 'dart:io';

main(){
  //inserção de características através de inputs
  print('Qual o seu nome?(Ex: Luan) ');
  String? nome = stdin.readLineSync();

  print('Qual é a sua idade?(Ex: 18) ');
  String? idade = stdin.readLineSync();

  print('Qual é o seu peso?(Ex: 55.4) ');
  String? peso = stdin.readLineSync();

  print('Qual é a sua altura?(Ex: 1.66) ');
  String? altura = stdin.readLineSync();

  if (idade != null && peso != null && altura != null) {
    int idadeint = int.parse(idade);
    double pesodouble = double.parse(peso);
    double alturadouble = double.parse(altura);

    var imc = pesodouble/(alturadouble * alturadouble);

    // mostra na tela os dados para o usuário
    print('''Olá $nome, seja bem vindo!
Você tem $idadeint, correto?
Vi que você tem $pesodouble kg
E vi que você tem, $alturadouble metros
Dito isso, vi que seu IMC é $imc''');

    //pergunta sobre consulta a tabela IMC
    print('Você quer que eu veja a classificação do seu ICM?(sim ou nao)');
    var resposta = stdin.readLineSync();

    //baseado na resposta do usuário, ele imprime na tela o resultado da classificação do IMC
      if (resposta == 'sim'){
        if (imc < 18.6){
          print('Você está abaixo do peso');
        }else if (imc > 18.5 && imc < 25){
          print('Você está com o peso ideal, PARABÉNS!');
        }else if (imc >= 25 && imc <= 29.9 ){
          print('Você está levemente acima do peso, você consegue melhorar!');
        }else if (imc >= 30 && imc <= 34.9 ){
          print('Você está com obesidade grau I, sugiro se consultar com profissionais!');
        }
        else if (imc >= 35.0 && imc <= 39.9 ){
          print('Você está com obesidade grau II (severa!), sugiro se consultar com profissionais o mais rápido possível!');
        }else if (imc >= 40){
          print('Você está com obesidade grau III (mórbida!), vá a médicos, saúde é coisa séria!');
        }
      }
  }

}