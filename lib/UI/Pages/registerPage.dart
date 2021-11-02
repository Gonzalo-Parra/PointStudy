import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';

var login = new LoginPage();

class RegisterPage extends StatelessWidget {
  static String id = 'RegisterPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff642DD5),
        body: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: 50.0,
          ),
          children: [
            SizedBox(
              height: 80.0,
            ),
            login.Logotipo(),
            SizedBox(
              height: 50.0,
            ),
            _textFieldNombre(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldApellido(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldNombreUs(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldEmail(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldPassword(),
            SizedBox(
              height: 15.0,
            ),
            _textFieldRepPassword(),
            SizedBox(
              height: 50.0,
            ),
            _registarmeButton(context),
            SizedBox(
              height: 85.0,
            ),
            login.pie_de_pagina(),
          ],
        ),
      ),
    );
  }

  Widget _textFieldNombre() {
    return textFieldGeneral(
      labelText: 'Nombre',
      onChanged: (value) {},
    );
  }

  Widget _textFieldApellido() {
    return textFieldGeneral(
      labelText: 'Apellido',
      onChanged: (value) {},
    );
  }

  Widget _textFieldNombreUs() {
    return textFieldGeneral(
      labelText: 'Nombre usuario',
      onChanged: (value) {},
    );
  }

  Widget _textFieldEmail() {
    return textFieldGeneral(
      labelText: 'Dirección E-mail',
      onChanged: (value) {},
      keyboarType: TextInputType.emailAddress,
    );
  }

  Widget _textFieldPassword() {
    return textFieldGeneral(
      labelText: 'Contraseña',
      onChanged: (value) {},
      obcureText: true,
    );
  }

  Widget _textFieldRepPassword() {
    return textFieldGeneral(
      labelText: 'Confirmar contraseña',
      onChanged: (value) {},
      obcureText: true,
    );
  }

  Widget _registarmeButton(context) {
    return buttonGeneral(
      text: 'Registrarme',
      onPressed: () {
        Route route = MaterialPageRoute(builder: (__) => HomePage());
        Navigator.pushReplacement(context, route);
      },
      fontGrosor: FontWeight.normal,
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
    );
  }
}
