import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pointstudy/UI/Pages/homePage.dart';
import 'package:pointstudy/UI/Pages/loginPage.dart';
import 'package:pointstudy/UI/Pages/articuloEscPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:pointstudy/UI/Pages/passwordPage.dart';
import 'package:pointstudy/Widgets/logotipo.dart';

var home = new HomePage();

class EscuelaPage extends StatefulWidget {
  static String id = 'CategoriasPage';

  @override
  State<EscuelaPage> createState() => _EscuelaPageState();
}

class _EscuelaPageState extends State<EscuelaPage> {
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
        appBar: customAppbar(context),
        drawer: customDrawer(context),
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
                    height: 460.0,
                  ),
                  cerrarSesionButton(),
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

  Widget cerrarSesionButton() {
    return buttonGeneral(
      text: 'Cerrar sesión',
      onPressed: () {
        logout(context);
      },
      BGcolor: (0xffDF0D0D),
      borderColor: (0xffDF0D0D),
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
                QueryDocumentSnapshot dataSchool = snapshot.data!.docs[index];
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
                    dataSchool['name'],
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

  Future<void> logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => LoginPage()));
  }
}
