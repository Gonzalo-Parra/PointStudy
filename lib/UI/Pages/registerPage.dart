import 'package:flutter/material.dart';
import 'package:pointstudy/Firebase/cloud.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/Widgets/logotipo.dart';
import 'package:pointstudy/Widgets/pie_de_pagina.dart';

class RegisterPage extends StatelessWidget {
  static String id = 'RegisterPage';
  final TextEditingController name = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController userName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff642DD5),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 50.0,
            ),
            children: [
              SizedBox(
                height: 80.0,
              ),
              Logotipo(),
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
                height: 60.0,
              ),
              _registarmeButton(context),
              SizedBox(
                height: 65.0,
              ),
              pie_de_pagina(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textFieldNombre() {
    return textFieldGeneral(
      labelText: 'Nombre',
      controller: name,
    );
  }

  Widget _textFieldApellido() {
    return textFieldGeneral(
      labelText: 'Apellido',
      controller: lastName,
    );
  }

  Widget _textFieldNombreUs() {
    return textFieldGeneral(
      labelText: 'Nombre usuario',
      controller: userName,
    );
  }

  Widget _textFieldEmail() {
    return textFieldGeneral(
      labelText: 'Dirección E-mail',
      controller: email,
      keyboarType: TextInputType.emailAddress,
    );
  }

  Widget _textFieldPassword() {
    return textFieldGeneral(
      labelText: 'Contraseña',
      controller: password,
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
