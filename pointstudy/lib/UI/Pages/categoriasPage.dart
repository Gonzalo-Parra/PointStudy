import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';

var home = new HomePage();

class CategoriasPage extends StatelessWidget {
  static String id = 'CategoriasPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff642DD5),
          title: Text(
            'Busqueda de escuelas',
            style: TextStyle(
              color: Color(0xffffffff),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              tooltip: 'Buscar escuelas',
              icon: Icon(Icons.search),
              color: Color(0xffffffff),
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            children: [
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Column(
                  children: [
                    login.Logotipo(),
                    home.categoriasButton(),
                    home.configuracionButton(),
                    SizedBox(
                      height: 450.0,
                    ),
                    home.cerrarSesionButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(
            vertical: 20.0,
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: 15.0,
                ),
                Text(
                  'CATEGORIA',
                  style: TextStyle(
                    color: Color(0xff716D6D),
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15.0,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                catPrivButton(),
                catPublicButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget catPrivButton() {
    return buttonGeneral(
      text: 'Privado',
      onPressed: () {},
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
    );
  }

  Widget catPublicButton() {
    return buttonGeneral(
      text: 'Publico',
      onPressed: () {},
      BGcolor: (0xff0DDF9F),
      borderColor: (0xff0DDF9F),
    );
  }
}
