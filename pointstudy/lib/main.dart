import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/categoriasPage.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/loginPageOptions.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Point Study',
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        LoginPageOptions.id: (context) => LoginPageOptions(),
        HomePage.id: (context) => HomePage(),
        CategoriasPage.id: (context) => CategoriasPage(),
      },
    );
  }
}
