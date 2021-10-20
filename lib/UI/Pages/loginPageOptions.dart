import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';

var login = new LoginPage();

class LoginPageOptions extends StatelessWidget {
  static String id = "LoginPageOptions";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff642DD5),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 50.0,
          ),
          children: [
            SizedBox(
              height: 80.0,
            ),
            login.Logotipo(),
            SizedBox(
              height: 175.0,
            ),
            _inicio_sesion_facebok(),
            SizedBox(
              height: 20.0,
            ),
            _inicio_sesion_google(),
            SizedBox(
              height: 260.0,
            ),
            login.pie_de_pagina(),
          ],
        ),
      ),
    ));
  }

  Widget _inicio_sesion_facebok() {
    return buttonGeneral(
      text: 'Continuar con Facebook',
      onPressed: () {},
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
    );
  }

  Widget _inicio_sesion_google() {
    return buttonGeneral(
      text: 'Continuar con Google',
      onPressed: () {},
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
    );
  }
}
