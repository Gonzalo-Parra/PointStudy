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
                height: 20,
              ),
              Logotipo(),
              SizedBox(
                height: 50.0,
              ),
              _textFielUser(),
              _checkBox(),
              SizedBox(
                height: 10.0,
              ),
              _textFielPassword(),
              _recuperarPassword(),
              SizedBox(
                height: 30.0,
              ),
              _iniciarSesionButton(),
              SizedBox(
                height: 15.0,
              ),
              _continuarFormaButton(),
              SizedBox(
                height: 45.0,
              ),
              _registrarse(),
              SizedBox(
                height: 45.0,
              ),
              pie_de_pagina(),
            ],
          ),
        ),
      ),
    );
  }

  Logotipo() {
    return Text(
      "POINT STUDY",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 50.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  _textFielUser() {
    return Container(
      height: 40.0,
      margin: EdgeInsets.symmetric(
        horizontal: 70.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff0DDF9F),
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          labelText: 'Nombre Usuario / E-mail',
        ),
        style: TextStyle(
          color: Color(0xff716D6D),
          fontSize: 15.0,
        ),
      ),
    );
  }

  _textFielPassword() {
    return Container(
      height: 40.0,
      margin: EdgeInsets.symmetric(
        horizontal: 70.0,
      ),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff0DDF9F),
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          labelText: 'Contraseña',
        ),
        style: TextStyle(
          color: Color(0xff716D6D),
          fontSize: 15.0,
        ),
      ),
    );
  }

  _checkBox() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Recordarme',
          style: TextStyle(
            color: Color(0xffffffff),
          ),
        ),
        SizedBox(
          width: 5.0,
        ),
        Checkbox(
          value: false,
          onChanged: (valueIn) {},
          side: BorderSide(
            color: Color(0xff716D6D),
            style: BorderStyle.solid,
            width: 2.0,
          ),
        ),
      ],
    );
  }

  _recuperarPassword() {
    return TextButton(
      onPressed: () {},
      child: Text(
        '¿Olvidaste tu contraseña?',
        style: TextStyle(
          color: Color(0xffffffff),
        ),
      ),
    );
  }

  Widget _iniciarSesionButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Iniciar sesión',
        style: TextStyle(
          color: Color(0xffffffff),
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(200.0, 40.0),
        backgroundColor: Color(0xff0DDF9F),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }

  _continuarFormaButton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Continuar de otra forma',
        style: TextStyle(
          color: Color(0xff716D6D),
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(200.0, 40.0),
        backgroundColor: Color(0xffffffff),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(
            color: Color(0xff0DDF9F),
            width: 2.0,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }

  Widget _registrarse() {
    return TextButton(
      onPressed: () {},
      child: Text(
        '¿No tienes una cuenta? Resgístrate',
        style: TextStyle(
          color: Color(0xffffffff),
        ),
      ),
    );
  }

  Widget pie_de_pagina() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        'Copyright © Gonzalo Parra',
        style: TextStyle(
          color: Color(0xffffffff),
          fontSize: 12.0,
          fontWeight: FontWeight.w100,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
