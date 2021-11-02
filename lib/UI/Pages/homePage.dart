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
            buscarEscuelasIcon(),
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
                    configuracionButton(),
                    SizedBox(
                      height: 450.0,
                    ),
                    cerrarSesionButton(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buscarEscuelasIcon() {
    return iconsGeneral(
      icon: Icon(Icons.search),
      onPressed: () {
        Container(
          width: 100.0,
          height: 30.0,
          color: Color(0xffffffff),
          child: TextField(),
        );
      },
      tooltip: 'Buscar',
      color: (0xffffffff),
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

  configuracionButton() {
    return ListTile(
      onTap: () {},
      title: Text(
        'CONFIGURACIÓN',
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

class iconsGeneral extends StatelessWidget {
  final icon;
  final onPressed;
  final String tooltip;
  final color;

  @override
  const iconsGeneral({
    @required this.icon,
    @required this.onPressed,
    this.tooltip = '',
    this.color = (0xffffffff),
  });

  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: icon,
      tooltip: tooltip,
      color: Color(color),
    );
  }
}
