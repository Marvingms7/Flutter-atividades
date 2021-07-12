import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class LoginPage extends StatelessWidget {
  String email = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,//organiza o layout da tela quando abre o teclado.
      body: SafeArea(//impedi que o layout ultrapasse a barra de notificações.
        minimum: const EdgeInsets.all(30),
        child: Column(//coloca um elemento em baixo do outro.
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
             Expanded(
               flex: 1,
               child:Row( //Obriga que todo espaço sobrado seja para ele, ajudando na melhor destribuição e alinhamento.
                 children: <Widget>[
                   Icon(FontAwesomeIcons.dumbbell),
                   Text('  ClubeClother academia', style: TextStyle(
                       fontSize: 18,
                       fontStyle: FontStyle.italic,
                       color: Color(0xFFc56000)
                   )),
                 ],
               ),
             ),
              Expanded(
                flex: 2,// Melhora no espaçamento entre um expanded e outro.
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Seja Bem-vindo!',
                      style: TextStyle(
                        color: Color(0xFF9f0000),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                    )),
                    SizedBox(height: 20),
                  Text("Informe seus dados de acesso para entrar no aplicativo",
                      style: TextStyle(
                        color: Color(0xFF1b0000),
                        fontStyle: FontStyle.italic,
                        fontSize: 15
                )),
                    SizedBox(height: 20),
                  TextFormField(
                    onChanged: (text){
                      email = text;
                    },
                    keyboardType: TextInputType.emailAddress,//configura o teclado para email.
                    decoration: InputDecoration(
                      hintText: 'Email',
                      hintStyle: TextStyle(//dica de tela, no caso irá mostrar "Email" como uma espécie de marca d'agua.
                        fontSize: 16,
                        color: Color(0xFF1b0000),
                        fontStyle: FontStyle.italic
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFc94f7c)
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFc94f7c)
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 10),
                  TextFormField(
                    onChanged: (text){
                    senha = text;
                  },
                    obscureText: true,//Deixa a senha "invisível"
                    decoration: InputDecoration(
                        hintText: 'Senha',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF1b0000),
                            fontStyle: FontStyle.italic
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFc94f7c)
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFFc94f7c)
                        ),
                    ),
                ),),
                Expanded(
                  flex: 1,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,//faz o alinhamento do botão de entrar juntamente do esqueci a senha.
                    children: <Widget>[
                      // ignore: deprecated_member_use
                      FlatButton(
                        onPressed: () {
                          if(email == 'catce.2020111mtds0409@aluno.ifpi.edu.br' && senha == '123456' ){
                            Navigator.of(context).pushReplacementNamed('/home');//chama a tela de homepage e some com a tela de login.
                          }
                          else{
                            print('Login invalido');// se o email e a senha estiverem corretas irá printar na tela a mensagem de "correto"
                          }
                        },
                        child: Text('Entrar', style: TextStyle(
                          color: Color(0xFF1b0000),
                          fontWeight: FontWeight.bold,//Deixa a cor do texto do botão com maior realce.
                        )),
                        color: Color(0xFFf4511e).withOpacity(.2),//deixa o botão meio transparente.
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),//Deixa o botão com bordas arredondadas.
                        ),

                      ),
                      // ignore: deprecated_member_use
                      FlatButton(onPressed: () => null, child: Text('Esqueci a a senha!',
                          style: TextStyle(
                              color: Color(0xFF1b0000),
                              fontStyle: FontStyle.italic
                          ),),),
                    ],
                  ),
                ),
            ]),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center, // alinha a para baixo da caixa.
                  children: <Widget>[
                    Text('Ainda não possui uma conta?', style: TextStyle(
                      color: Color(0xFF1b0000),
                      fontStyle: FontStyle.italic,
                    )),
                    // ignore: deprecated_member_use
                    FlatButton(onPressed: () => null, child: Text('Criar uma',
                        style: TextStyle(
                            color: Color(0xFFa30000),
                        ),
                    ),
                    ),
                  ],
                ),
              ),
            ],
        ),
      ),
    );
  }
}
