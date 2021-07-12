import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/app/routes/home_page.dart';
import 'package:untitled1/app/routes/imc.dart';
import 'package:untitled1/app/routes/login.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'APP fitness',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.cantarellTextTheme(
            Theme.of(context).textTheme,
          )
      ),
      initialRoute: '/',//Define a rota inicial
      routes: {
        '/': (context) => LoginPage(),//Rota da tela de login
        '/home': (context) => HomePage(),//Rota da tela de home
        '/imc' : (context) => ImcPage(),//Rota da tela de imc
      },
    );
  }
}