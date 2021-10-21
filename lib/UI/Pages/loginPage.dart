import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';

class LoginPage extends StatelessWidget {
  static String id = "LoginPage";
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Logotipo(),
                ],
              ),
              SizedBox(
                height: 80.0,
              ),
              _textFielUser(),
              _checkBox(),
              SizedBox(
                height: 10.0,
              ),
              _textFielPassword(),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _recuperarPassword(),
                ],
              ),
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
        fontSize: 40.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  _textFielUser() {
    return textFieldGeneral(
      labelText: 'Nombre Usuario / E-mail',
      onChanged: (value) {},
    );
  }

  _textFielPassword() {
    return textFieldGeneral(
      labelText: 'Contraseña',
      onChanged: (value) {},
      obcureText: true,
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
          fontWeight: FontWeight.normal,
        ),
      ),
    );
  }

  Widget _iniciarSesionButton() {
    return buttonGeneral(
      text: 'Iniciar sesión',
      onPressed: () {},
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
    );
  }

  _continuarFormaButton() {
    return buttonGeneral(
      text: 'Continuar de otra forma',
      onPressed: () {},
      BGcolor: (0xffffffff),
      borderColor: (0xff0DDF9F),
      fontColor: (0xff716D6D),
    );
  }

  Widget _registrarse() {
    return TextButton(
      onPressed: () {},
      child: Text(
        '¿No tienes una cuenta? Resgístrate',
        style: TextStyle(
          color: Color(0xffffffff),
          fontWeight: FontWeight.normal,
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

class textFieldGeneral extends StatelessWidget {
  final String labelText;
  final onChanged;
  final bool obcureText;
  final TextInputType keyboarType;
  const textFieldGeneral({
    @required this.labelText = '',
    @required this.onChanged = '',
    this.obcureText = false,
    this.keyboarType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextField(
        keyboardType: keyboarType,
        onChanged: onChanged,
        obscureText: obcureText,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff0DDF9F),
              width: 3.0,
              style: BorderStyle.solid,
            ),
            borderRadius: BorderRadius.circular(50.0),
          ),
          labelText: labelText,
        ),
        style: TextStyle(
          color: Color(0xff716D6D),
          fontSize: 15.0,
        ),
      ),
    );
  }
}

class buttonGeneral extends StatelessWidget {
  final String text;
  final onPressed;
  final BGcolor;
  final borderColor;
  final fontColor;
  final FontWeight fontGrosor;
  const buttonGeneral({
    @required this.text = '',
    @required this.onPressed = '',
    this.BGcolor,
    this.borderColor,
    this.fontColor = (0xffffffff),
    this.fontGrosor = FontWeight.normal,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Color(fontColor),
          fontWeight: fontGrosor,
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(200.0, 40.0),
        backgroundColor: Color(BGcolor),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
          side: BorderSide(
            color: Color(borderColor),
            width: 2.0,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
