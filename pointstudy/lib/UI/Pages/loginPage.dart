import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  static String id = "LoginPage";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color(0xff642DD5),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              "POINT STUDY",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 140.0,
            ),
            _inicio_sesion_facebok(context),
            SizedBox(
              height: 20.0,
            ),
            _inicio_sesion_google(context),
            SizedBox(
              height: 20.0,
            ),
            _inicio_sesion_email(context),
            SizedBox(
              height: 130.0,
            ),
            pie_de_pagina(context),
          ],
        ),
      ),
    ));
  }

  Widget _inicio_sesion_facebok(context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Iniciar sesión con Facebook',
        style: TextStyle(
          color: Color(0xff716D6D),
          fontSize: 20.0,
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(300.0, 50.0),
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            style: BorderStyle.solid,
            width: 4.0,
            color: Color(0xff0DDF9F),
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _inicio_sesion_google(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Iniciar sesión con Google',
        style: TextStyle(
          color: Color(0xff716D6D),
          fontSize: 20.0,
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(300.0, 50.0),
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            style: BorderStyle.solid,
            width: 4.0,
            color: Color(0xff0DDF9F),
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }

  Widget _inicio_sesion_email(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Iniciar sesión con E-mail',
        style: TextStyle(
          color: Color(0xff716D6D),
          fontSize: 20.0,
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(300.0, 50.0),
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            style: BorderStyle.solid,
            width: 4.0,
            color: Color(0xff0DDF9F),
          ),
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}

Widget pie_de_pagina(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    child: Text(
      'Copyright © Gonzalo Parra',
      style: TextStyle(
        color: Color(0xff0DDF9F),
        fontSize: 12.0,
        fontWeight: FontWeight.w100,
        fontStyle: FontStyle.italic,
      ),
    ),
  );
}
