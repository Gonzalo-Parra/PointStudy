import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/articuloEscPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

var home = new HomePage();

class EscuelaPage extends StatefulWidget {
  static String id = 'CategoriasPage';

  @override
  State<EscuelaPage> createState() => _EscuelaPageState();
}

class _EscuelaPageState extends State<EscuelaPage> {
  List escuelas = [];
  final _firebase = FirebaseFirestore.instance;
  List categorias = [
    'TODAS',
    'PRIMARIA',
    'SECUNDARIA',
    'TERCIARIA',
    'ESPECIALES'
  ];
  String dropdownValue = 'TODAS';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: home.customAppbar(context),
        drawer: home.customDrawer(context),
        body: Column(
          children: [
            SizedBox(
              height: 15.0,
            ),
            titlePage(),
            SizedBox(
              height: 15.0,
            ),
            _filterButton(),
            SizedBox(
              height: 50.0,
            ),
            listSchool(),
          ],
        ),
      ),
    );
  }

  Widget titlePage() {
    return Row(
      children: [
        SizedBox(
          width: 15.0,
        ),
        Text(
          'ESCUELAS',
          style: TextStyle(
            color: Color(0xff716D6D),
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
          ),
        ),
      ],
    );
  }

  Widget _filterButton() {
    return Row(
      children: [
        SizedBox(
          width: 15.0,
        ),
        Container(
          padding: EdgeInsets.only(left: 10.0, right: 10.0),
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xff716D6D),
              width: 1.0,
            ),
          ),
          child: DropdownButton<String>(
            onChanged: (newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            value: dropdownValue,
            items: categorias.map(
              (value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              },
            ).toList(),
            underline: Container(),
          ),
        ),
        SizedBox(
          width: 30.0,
        ),
        TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size(70.0, 50.0),
            backgroundColor: Color(0xff0DDF9F),
          ),
          onPressed: () {},
          child: Text(
            'Filtrar',
            style: TextStyle(
              color: Color(0xffffffff),
            ),
          ),
        ),
      ],
    );
  }

  Widget listSchool() {
    return StreamBuilder<QuerySnapshot>(
      stream: _firebase.collection('escuelas').snapshots(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                QueryDocumentSnapshot x = snapshot.data!.docs[index];
                return ListTile(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Color(0xff716D6D),
                      width: 0.5,
                    ),
                  ),
                  onTap: () {
                    Route route =
                        MaterialPageRoute(builder: (_) => ArticuloEscPage());
                    Navigator.push(context, route);
                  },
                  title: Text(
                    x['name'],
                    style: TextStyle(
                      color: Color(0xff716D6D),
                      fontSize: 25.0,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  trailing: Icon(Icons.keyboard_arrow_right_outlined),
                );
              });
        } else {
          return Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

class Escuela {
  late String name;
  late String direction;
  late String history;
  late String ages;
  late String title;
  late String vocationsFollow;

  Escuela(name, direction, history, ages, title, vocationsFollow) {
    this.name = name;
    this.direction = direction;
    this.history = history;
    this.ages = ages;
    this.title = title;
    this.vocationsFollow = vocationsFollow;
  }
}
