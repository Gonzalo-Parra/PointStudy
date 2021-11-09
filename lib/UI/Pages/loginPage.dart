import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPageOptions.dart';
import 'package:pointstudy/UI/Pages/passwordPage.dart';
import 'package:pointstudy/UI/Pages/registerPage.dart';

class LoginPage extends StatelessWidget {
  static String id = "LoginPage";
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff642DD5),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Center(
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
                  height: 100.0,
                ),
                _textFielUser(),
                //_checkBox(),
                SizedBox(
                  height: 25.0,
                ),
                _textFielPassword(),
                _recuperarPassword(context),
                SizedBox(
                  height: 30.0,
                ),
                _iniciarSesionButton(context),
                SizedBox(
                  height: 15.0,
                ),
                _continuarFormaButton(context),
                SizedBox(
                  height: 50.0,
                ),
                _registrarse(context),
                SizedBox(
                  height: 55.0,
                ),
                pie_de_pagina(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Logotipo() {
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

  Widget _textFielUser() {
    return textFieldGeneral(
      labelText: 'Nombre Usuario / E-mail',
      onChanged: (value) {},
    );
  }

  Widget _textFielPassword() {
    return textFieldGeneral(
      labelText: 'Contraseña',
      onChanged: (value) {},
      obcureText: true,
    );
  }

  Widget _checkBox() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: 20.0,
        ),
        Text(
          'Recordarme',
          style: TextStyle(
            color: Color(0xffffffff),
          ),
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

  Widget _recuperarPassword(context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (__) => PasswordPage());
            Navigator.push(context, route);
          },
          child: Text(
            '¿Olvidaste tu contraseña?',
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
            ),
          ),
        ),
      ],
    );
  }

  Widget _iniciarSesionButton(context) {
    return buttonGeneral(
      text: 'Iniciar sesión',
      onPressed: () {
        Route route = MaterialPageRoute(builder: (__) => HomePage());
        Navigator.pushReplacement(context, route);
      },
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
    );
  }

  Widget _continuarFormaButton(context) {
    return buttonGeneral(
      text: 'Continuar de otra forma',
      onPressed: () {
        Route route = MaterialPageRoute(builder: (__) => LoginPageOptions());
        Navigator.push(context, route);
      },
      BGcolor: (0xffffffff),
      borderColor: (0xff0DDF9F),
      fontColor: (0xff716D6D),
    );
  }

  Widget _registrarse(context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (__) => RegisterPage());
            Navigator.push(context, route);
          },
          child: Text(
            '¿No tienes una cuenta? Resgístrate',
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.normal,
              fontSize: 15.0,
            ),
          ),
        ),
      ],
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
      padding: EdgeInsets.only(top: 4.0),
      height: 40.0,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xff0DDF9F),
          width: 3.0,
        ),
        color: Color(0xffffffff),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: TextField(
        cursorColor: Color(0xff0DDF9F),
        keyboardType: keyboarType,
        onChanged: onChanged,
        obscureText: obcureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xff716D6D),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Color(0xffffffff),
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Color(0xffffffff),
              width: 3.0,
              style: BorderStyle.solid,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50.0),
            borderSide: BorderSide(
              color: Color(0xffffffff),
              width: 5.0,
              style: BorderStyle.solid,
            ),
          ),
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
