import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
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
  final _firebase = FirebaseFirestore.instance;
  List<String> images = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffffffff),
        body: Center(
          child: StreamBuilder<QuerySnapshot>(
            stream: _firebase.collection('escuelas').snapshots(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    QueryDocumentSnapshot dataSchool =
                        snapshot.data!.docs[index];
                    return Column(
                      children: [
                        galeriaFotos(),
                        SizedBox(
                          height: 30.0,
                        ),
                        nombreEscuela(dataSchool),
                        direccionEscuela(dataSchool),
                        SizedBox(
                          height: 15.0,
                        ),
                        historiaEscuela(dataSchool),
                        SizedBox(
                          height: 20.0,
                        ),
                        datosEscuela(dataSchool),
                      ],
                    );
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
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

  Widget nombreEscuela(dataSchool) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Text(
            dataSchool['name'],
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

  Widget direccionEscuela(dataSchool) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.0,
          ),
          child: Text(
            dataSchool['direction'],
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

  Widget historiaEscuela(dataSchool) {
    return Container(
      height: 100.0,
      padding: EdgeInsets.symmetric(
        horizontal: 10.0,
      ),
      child: Text(
        dataSchool['history'],
        style: TextStyle(
          color: Color(0xff000000),
          fontSize: 25.0,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget datosEscuela(dataSchool) {
    return Column(
      children: [
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        _campoDuracion(dataSchool),
        SizedBox(
          height: 10.0,
        ),
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        _campoTitulo(dataSchool),
        SizedBox(
          height: 15.0,
        ),
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        campoVocaciones(dataSchool),
        SizedBox(
          height: 10.0,
        ),
        Divider(color: Color(0xff716D6D)),
        SizedBox(
          height: 10.0,
        ),
        campoTipoEsc(dataSchool),
        SizedBox(
          height: 10.0,
        ),
        Divider(color: Color(0xff716D6D))
      ],
    );
  }

  Widget _campoDuracion(dataSchool) {
    return campoGeneral(
      titulo: 'Duración cursada:',
      dato: dataSchool['ages'],
    );
  }

  Widget _campoTitulo(dataSchool) {
    return campoGeneral(
      titulo: 'Titulo:',
      dato: dataSchool['title'],
    );
  }

  Widget campoVocaciones(dataSchool) {
    return campoGeneral(
      titulo: 'Vocaciones a seguir:',
      dato: dataSchool['vocationsFollow'],
    );
  }

  Widget campoTipoEsc(dataSchool) {
    return campoGeneral(
      titulo: 'Tipo:',
      dato: dataSchool['typeSchool'],
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
