import 'package:flutter/material.dart';

class LoginPageOptions extends StatelessWidget {
  static String id = "LoginPageOptions";
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
              height: 130.0,
            ),
            _inicio_sesion_facebok(context),
            SizedBox(
              height: 20.0,
            ),
            _inicio_sesion_google(context),
            SizedBox(
              height: 150.0,
            ),
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
          color: Color(0xffffffff),
          fontSize: 20.0,
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(300.0, 50.0),
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: Color(0xff0DDF9F),
      ),
    );
  }

  Widget _inicio_sesion_google(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Iniciar sesión con Google',
        style: TextStyle(
          color: Color(0xffffffff),
          fontSize: 20.0,
        ),
      ),
      style: TextButton.styleFrom(
        fixedSize: Size(300.0, 50.0),
        padding: EdgeInsets.all(20.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        backgroundColor: Color(0xff0DDF9F),
      ),
    );
  }
}
