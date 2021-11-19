import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/articuloEscPage.dart';

var login = new LoginPage();

class PasswordPage extends StatelessWidget {
  static String id = "PasswordPage";
  final TextEditingController newPassword = TextEditingController();
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
                Text(
                  'RECUPERAR CONTRASEÑA',
                  style: TextStyle(
                    color: Color(0xffffffff),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                textFielNewPassword(),
                SizedBox(
                  height: 25.0,
                ),
                confirmarPasswordButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget textFielNewPassword() {
    return textFieldGeneral(
      labelText: 'Nueva contraseña',
      obcureText: true,
      controller: newPassword,
    );
  }

  Widget confirmarPasswordButton(context) {
    return buttonGeneral(
      text: 'Confirmar',
      onPressed: () {},
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
      fontGrosor: FontWeight.normal,
    );
  }
}
