import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/passwordPage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/loginPageOptions.dart';
import 'package:pointstudy/UI/Pages/registerPage.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/escuelaPage.dart';
import 'package:pointstudy/UI/Pages/articuloEscPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Point Study',
      initialRoute: EscuelaPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        LoginPageOptions.id: (context) => LoginPageOptions(),
        RegisterPage.id: (context) => RegisterPage(),
        PasswordPage.id: (context) => PasswordPage(),
        HomePage.id: (context) => HomePage(),
        EscuelaPage.id: (context) => EscuelaPage(),
        ArticuloEscPage.id: (context) => ArticuloEscPage(),
      },
    );
  }
}
