/*import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uuid/uuid.dart';
import 'dart:async';
import 'dart:io';



class Usuario {
  Usuario(this.Id, this.Name, this.Lastname, this.Username, this.Email, this.Password);

  String Id;
  String Name;
  String Lastname;
  String Username;
  String Email;
  String Password;
}

class BuscarUsuarios extends StatefulWidget {

  @override
  _BuscarUsuariosState createState() => _BuscarUsuariosState();
}

class _BuscarUsuariosState extends State<BuscarUsuarios> {
  Stream(List(Usuario) getData() async*{
    var nombreUsuarioStream = Firestore.instance.collection('post').orderby('Id', descending:true).snapshot();

    var usuario = List<Usuario>();

    await for(var nombreEscuelaStream in nombreEscuelaStream){
      var escuelas;

      if (escuelaDoc['uid'] != null && escuelaDoc ['uid'] != '/ab+c/') {
        var escuelas = await Firestore.instance.collection('usuarios').document.get();
      } else {
        escuelas = Escuela(IdSnapshot['Id'],NameSnapshot['Name'], LastnameSnapshot['Lastname'], UsernameSnapshot['Username'], EmailSnapshot['Email'], PasswordSnapshot['Password']), '','','','','','');
      }

      escuelas.add(Id,Name,Lastname,Username,Email,Password);
    }
  )


  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
*/