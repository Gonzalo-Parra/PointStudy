import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/articuloEscPage.dart';

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
                height: 60.0,
              ),
              textFielNewPassword(),
              SizedBox(
                height: 25.0,
              ),
              textFielConfirmarPassword(),
              SizedBox(
                height: 60.0,
              ),
              confirmarPasswordButton(context),
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

  Widget confirmarPasswordButton(context) {
    return buttonGeneral(
      text: 'Confirmar',
      onPressed: () {
        Route route = MaterialPageRoute(builder: (__) => HomePage());
        Navigator.pushReplacement(context, route);
      },
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
      fontGrosor: FontWeight.normal,
    );
  }
}
