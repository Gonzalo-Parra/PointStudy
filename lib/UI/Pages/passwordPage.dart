import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/escuelaPage.dart';

var login = new LoginPage();

class PasswordPage extends StatelessWidget {
  static String id = "PasswordPage";
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
                height: 150.0,
              ),
              textFielNewPassword(),
              SizedBox(
                height: 25.0,
              ),
              textFielConfirmarPassword(),
              SizedBox(
                height: 50.0,
              ),
              confirmarPasswordButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget textFielNewPassword() {
    return textFieldGeneral(
      labelText: 'Ingrese una nueva contraseña',
      onChanged: (value) {},
    );
  }

  Widget textFielConfirmarPassword() {
    return textFieldGeneral(
      labelText: 'Confirme la nueva contraseña',
      onChanged: (value) {},
    );
  }

  Widget confirmarPasswordButton() {
    return buttonGeneral(
      text: 'Confirmar',
      onPressed: () {},
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
      fontGrosor: FontWeight.normal,
    );
  }
}
