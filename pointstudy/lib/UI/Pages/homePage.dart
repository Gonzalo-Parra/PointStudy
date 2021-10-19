import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';

var login = new LoginPage();

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
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
                    categoriasButton(),
                    SizedBox(
                      height: 500.0,
                    ),
                    cerrarSesionButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoriasButton() {
    return ListTile(
      onTap: () {},
      title: Text(
        'CATEGORIAS',
        style: TextStyle(
          color: Color(0xff716D6D),
          fontWeight: FontWeight.bold,
          fontSize: 15.0,
        ),
      ),
      leading: Icon(
        Icons.keyboard_arrow_down_outlined,
        color: Color(0xff716D6D),
      ),
    );
  }

  Widget cerrarSesionButton() {
    return buttonGeneral(
      text: 'Cerrar sesión',
      onPressed: () {},
      BGcolor: (0xffDF0D0D),
      borderColor: (0xffDF0D0D),
    );
  }
}
