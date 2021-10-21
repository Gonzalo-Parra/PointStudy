import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';

var login = new EscuelaPage();

class EscuelaPage extends StatelessWidget {
  static String id = 'EscuelaPage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 10.0,
            ),
            children: [
              galeriaFotos(),
              nombreEscuela(),
              direccionEscuela(),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 100.0,
                child: historiaEscuela(),
              ),
              SizedBox(
                height: 20.0,
              ),
              datosEscuela(),
            ],
          ),
        ),
      ),
    );
  }

  Widget galeriaFotos() {
    return Container(
      height: 250.0,
    );
  }

  Widget nombreEscuela() {
    return Text(
      'NOMBRE ESCUELA',
      style: TextStyle(
        color: Color(0xff716D6D),
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget direccionEscuela() {
    return Text(
      'Direccion de la escuela',
      style: TextStyle(
        color: Color(0xff716D6D),
        fontSize: 15.0,
        fontWeight: FontWeight.w200,
        fontStyle: FontStyle.italic,
      ),
    );
  }

  Widget historiaEscuela() {
    return Container(
      child: Text(
        'Breve Historia De la Escuela',
        style: TextStyle(
          color: Color(0xff000000),
          fontSize: 25.0,
          fontWeight: FontWeight.w200,
        ),
      ),
    );
  }

  Widget datosEscuela() {
    return Column(
      children: [
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        _campoDuracion(),
        SizedBox(
          height: 10.0,
        ),
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        _campoTitulo(),
        SizedBox(
          height: 15.0,
        ),
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        campoVocaciones(),
        SizedBox(
          height: 10.0,
        ),
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        campoPrograma(),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  Widget _campoDuracion() {
    return campoGeneral(
      titulo: 'Duración de la cursada',
      dato: 'dato',
    );
  }

  Widget _campoTitulo() {
    return campoGeneral(
      titulo: 'Titulo:',
      dato: 'dato',
    );
  }

  Widget campoVocaciones() {
    return campoGeneral(
      titulo: 'Vocaciones a seguir:',
      dato: 'dato',
    );
  }

  campoPrograma() {
    return campoGeneral(
      titulo: 'Programa del Titulo:',
      dato: 'dato',
    );
  }
}

class campoGeneral extends StatelessWidget {
  final String titulo;
  final String dato;

  @override
  const campoGeneral({
    @required this.titulo = '',
    @required this.dato = '',
  });

  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '$titulo',
          style: TextStyle(
            color: Color(0xff716D6D),
            fontSize: 15.0,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          '$dato',
          style: TextStyle(
            color: Color(0xff716D6D),
            fontSize: 15.0,
            fontStyle: FontStyle.italic,
          ),
        ),
      ],
    );
  }
}
