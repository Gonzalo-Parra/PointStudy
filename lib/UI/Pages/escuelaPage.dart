import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/articuloEscPage.dart';

var home = new HomePage();

class EscuelaPage extends StatefulWidget {
  static String id = 'CategoriasPage';

  @override
  State<EscuelaPage> createState() => _EscuelaPageState();
}

class _EscuelaPageState extends State<EscuelaPage> {
  List escuelas = [
    Escuela(
        'EPET 20',
        'Lanín 2020',
        'BLABLABLABLABLABLABLABLABLABLABLABLABBLABALBABALABLBALBALBALABLABBL',
        '6 Años',
        'Técnico Programador',
        'Desarrollo Web'),
    Escuela(
        'EPET 20',
        'Lanín 2020',
        'BLABLABLABLABLABLABLABLABLABLABLABLABBLABALBABALABLBALBALBALABLABBL',
        '6 Años',
        'Técnico Programador',
        'Desarrollo Web'),
    Escuela(
        'EPET 20',
        'Lanín 2020',
        'BLABLABLABLABLABLABLABLABLABLABLABLABBLABALBABALABLBALBALBALABLABBL',
        '6 Años',
        'Técnico Programador',
        'Desarrollo Web'),
    Escuela(
        'EPET 20',
        'Lanín 2020',
        'BLABLABLABLABLABLABLABLABLABLABLABLABBLABALBABALABLBALBALBALABLABBL',
        '6 Años',
        'Técnico Programador',
        'Desarrollo Web'),
    Escuela(
        'EPET 20',
        'Lanín 2020',
        'BLABLABLABLABLABLABLABLABLABLABLABLABBLABALBABALABLBALBALBALABLABBL',
        '6 Años',
        'Técnico Programador',
        'Desarrollo Web'),
    Escuela(
        'EPET 20',
        'Lanín 2020',
        'BLABLABLABLABLABLABLABLABLABLABLABLABBLABALBABALABLBALBALBALABLABBL',
        '6 Años',
        'Técnico Programador',
        'Desarrollo Web'),
    Escuela(
        'EPET 20',
        'Lanín 2020',
        'BLABLABLABLABLABLABLABLABLABLABLABLABBLABALBABALABLBALBALBALABLABBL',
        '6 Años',
        'Técnico Programador',
        'Desarrollo Web'),
  ];
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
            hint: Text("Filtré por categoría"),
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
    return ListView.builder(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      itemCount: escuelas.length,
      itemBuilder: (context, index) {
        return ListTile(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xff716D6D),
              width: 0.5,
            ),
          ),
          onTap: () {
            Route route = MaterialPageRoute(builder: (_) => ArticuloEscPage());
            Navigator.push(context, route);
          },
          title: Text(
            escuelas[index].name,
            style: TextStyle(
              color: Color(0xff716D6D),
              fontSize: 25.0,
              fontWeight: FontWeight.w400,
            ),
          ),
          trailing: Icon(Icons.keyboard_arrow_right_outlined),
        );
      },
    );
  }
}

class Escuela {
  late String name;
  late String direccion;
  late String history;
  late String durationCurs;
  late String title;
  late String vocationFollow;

  Escuela(name, direction, history, durationCurs, title, vocationFollow) {
    this.name = name;
    this.direccion = direction;
    this.history = history;
    this.durationCurs = durationCurs;
    this.title = title;
    this.vocationFollow = vocationFollow;
  }
}
