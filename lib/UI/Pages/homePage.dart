import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/escuelaPage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/passwordPage.dart';
import 'package:pointstudy/Widgets/logotipo.dart';

class HomePage extends StatelessWidget {
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppbar(context),
        drawer: customDrawer(context),
      ),
    );
  }

  AppBar customAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xff642DD5),
      title: Text(
        'Busqueda de escuelas',
        style: TextStyle(
          color: Color(0xffffffff),
        ),
      ),
      actions: [
        buscarEscuelasIcon(context),
      ],
    );
  }

  Drawer customDrawer(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff642DD5),
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
                  Logotipo(),
                  SizedBox(
                    height: 20.0,
                  ),
                  Divider(
                    color: Color(0xffffffff),
                  ),
                  escuelasButton(context),
                  Divider(
                    color: Color(0xffffffff),
                  ),
                  configuracionButton(context),
                  Divider(
                    color: Color(0xffffffff),
                  ),
                  SizedBox(
                    height: 395.0,
                  ),
                  cerrarSesionButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buscarEscuelasIcon(context) {
    return IconButton(
      icon: Icon(
        Icons.search,
        color: Color(0xffffffff),
      ),
      onPressed: () {
        showSearch(
          context: context,
          delegate: searchData(),
        );
      },
      tooltip: 'Buscar',
    );
  }

  Widget escuelasButton(context) {
    return TextButton(
      onPressed: () {
        Route route = MaterialPageRoute(builder: (__) => EscuelaPage());
        Navigator.push(context, route);
      },
      child: Row(
        children: [
          Text(
            'ESCUELAS',
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Color(0xffffffff),
          ),
        ],
      ),
    );
  }

  configuracionButton(context) {
    return TextButton(
      onPressed: () {
        Route route = MaterialPageRoute(builder: (__) => PasswordPage());
        Navigator.push(context, route);
      },
      child: Row(
        children: [
          Text(
            'CAMBIAR CONTRASEÑA',
            style: TextStyle(
              color: Color(0xffffffff),
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Icon(
            Icons.keyboard_arrow_right_outlined,
            color: Color(0xffffffff),
          ),
        ],
      ),
    );
  }

  Widget cerrarSesionButton(context) {
    return buttonGeneral(
      text: 'Cerrar sesión',
      onPressed: () {
        Route route = MaterialPageRoute(builder: (__) => LoginPage());
        Navigator.pushReplacement(context, route);
      },
      BGcolor: (0xffDF0D0D),
      borderColor: (0xffDF0D0D),
    );
  }
}

class searchData extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () => this.query = '',
        tooltip: 'Limpiar',
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios_new_outlined),
      onPressed: () => this.close(context, null),
      tooltip: 'Atras',
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('Results');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Text('Suggestions');
  }
}
