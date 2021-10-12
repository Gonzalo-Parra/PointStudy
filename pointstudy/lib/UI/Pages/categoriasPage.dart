import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';

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
                    SizedBox(
                      height: 360.0,
                    ),
                    pie_de_pagina(
                      context,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: [
            SizedBox(
              height: 20.0,
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
      ),
    );
  }
}
