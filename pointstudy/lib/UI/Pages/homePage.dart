import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';

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
            IconButton(
              onPressed: () {},
              tooltip: 'Atras',
              icon: Icon(Icons.arrow_back_ios_new),
              color: Color(0xffffffff),
              iconSize: 20.0,
            )
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              SizedBox(
                height: 20.0,
              ),
              Center(
                child: Column(
                  children: [
                    Text(
                      'POINT STUDY',
                      style: TextStyle(
                        color: Color(0xff716D6D),
                        fontSize: 25.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    categoriasButton(context),
                    SizedBox(
                      height: 360.0,
                    ),
                    cerrarSesionButton(context),
                    SizedBox(
                      height: 25.0,
                    ),
                    pie_de_pagina(
                      context,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget categoriasButton(context) {
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

  Widget cerrarSesionButton(context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Cerrar sesión',
        style: TextStyle(
          color: Color(0xffffffff),
          fontSize: 15.0,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Color(0xffDF0D0D),
        fixedSize: Size(200.0, 40.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
      ),
    );
  }
}
