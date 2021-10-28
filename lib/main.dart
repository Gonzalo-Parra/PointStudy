import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/cambiarContrase%C3%B1a.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/loginPageOptions.dart';
import 'package:pointstudy/UI/Pages/registerPage.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/categoriasPage.dart';
import 'package:pointstudy/escuelaPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Point Study',
      initialRoute: PasswordPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        LoginPageOptions.id: (context) => LoginPageOptions(),
        RegisterPage.id: (context) => RegisterPage(),
        PasswordPage.id: (context) => PasswordPage(),
        HomePage.id: (context) => HomePage(),
        CategoriasPage.id: (context) => CategoriasPage(),
        EscuelaPage.id: (context) => EscuelaPage(),
      },
    );
  }
}
