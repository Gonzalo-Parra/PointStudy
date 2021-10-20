import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/loginPageOptions.dart';
import 'package:pointstudy/UI/Pages/registerPage.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/categoriasPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Point Study',
      initialRoute: CategoriasPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        LoginPageOptions.id: (context) => LoginPageOptions(),
        RegisterPage.id: (context) => RegisterPage(),
        HomePage.id: (context) => HomePage(),
        CategoriasPage.id: (context) => CategoriasPage(),
      },
    );
  }
}
