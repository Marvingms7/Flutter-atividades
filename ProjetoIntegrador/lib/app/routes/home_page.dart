import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<HomePage> createState(){
    return HomePageState();
  }
}

class HomePageState extends State<HomePage>{
  int counter = 0;
  @override
  Widget build (BuildContext context){
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Marcus Vinicius'),
              accountEmail: Text('catce.2020111mtds0409@aluno.ifpi.edu.br'),
              currentAccountPicture:ClipRRect(
                borderRadius: BorderRadius.circular(40),//deixa a borda da foto arredondada
                child: Image.asset('assets/imagens/marcus.jpg'),//importa a imagem
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('IMC'),
              subtitle: Text('indice de massa corporal'),
              onTap: (){
                Navigator.of(context).pushNamed('/imc');
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Sair'),
              subtitle: Text('iFinalizar sessão'),
              onTap: (){
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('ClubeClother'),
      ),
    );
  }
}

