import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

var login = new ArticuloEscPage();

class ArticuloEscPage extends StatefulWidget {
  static String id = 'ArticuloEscPage';

  @override
  State<ArticuloEscPage> createState() => _ArticuloEscPageState();
}

class _ArticuloEscPageState extends State<ArticuloEscPage> {
  List<String> images = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: ListView(
            children: [
              galeriaFotos(),
              SizedBox(
                height: 30.0,
              ),
              nombreEscuela(),
              direccionEscuela(),
              SizedBox(
                height: 15.0,
              ),
              historiaEscuela(),
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
      width: double.infinity,
      height: 250.0,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            'http://via.placeholder.com/350x150',
            fit: BoxFit.fill,
          );
        },
        itemCount: 5,
        pagination: new SwiperPagination(),
        control: new SwiperControl(
          color: Color(0xff716D6D),
          iconPrevious: Icons.arrow_back_ios_new_rounded,
          iconNext: Icons.arrow_forward_ios_rounded,
        ),
      ),
    );
  }

  Widget nombreEscuela() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Text(
            'NOMBRE ESCUELA',
            style: TextStyle(
              color: Color(0xff716D6D),
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }

  Widget direccionEscuela() {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Text(
            'Direccion de la escuela',
            style: TextStyle(
              color: Color(0xff716D6D),
              fontSize: 15.0,
              fontWeight: FontWeight.w200,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ],
    );
  }

  Widget historiaEscuela() {
    return Container(
      height: 100.0,
      color: Colors.grey,
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
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
        campoTipoEsc(),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }

  Widget _campoDuracion() {
    return campoGeneral(
      titulo: 'Duración cursada:',
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

  campoTipoEsc() {
    return campoGeneral(
      titulo: 'Tipo:',
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
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Row(
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
      ),
    );
  }
}
