import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:uuid/uuid.dart';
import 'dart:async';
import 'dart:io';

final FirebaseFirestore _firestore = FirebaseFirestore.instance;
final CollectionReference _mainCollection = _firestore.collection('escuelas');

class Database {
  static String? userUid;

  static Future<void> addUsuario({
    required String Name,
    required String Lastname,
    required String Username,
    required String Email,
    required String Password,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('Usuarios').doc();

    Map<String, dynamic> data = <String, dynamic>{
      "Nombre": Name,
      "Apellido": Lastname,
      "NombreUsuario": Username,
      "Email": Email,
      "Password": Password
    };

    await documentReferencer
        .set(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));
  }

  static Future<void> updatePassword({
    required String newPassword,
    required String docId,
  }) async {
    DocumentReference documentReferencer =
        _mainCollection.doc(userUid).collection('usuario').doc(docId);

    Map<String, dynamic> data = <String, dynamic>{
      "Password": newPassword,
    };

    await documentReferencer
        .update(data)
        .whenComplete(() => print("Note item updated in the database"))
        .catchError((e) => print(e));
  }

  static Stream<QuerySnapshot> readEscuelas() {
    CollectionReference escuelasCollection =
        _mainCollection.doc(userUid).collection('escuelas');

    return escuelasCollection.snapshots();
  }

  static Stream<QuerySnapshot> readEscuelasPrimarias() {
    CollectionReference escuelasCollection =
        _mainCollection.doc(userUid).collection('escuelas');

    return escuelasCollection.snapshots();
  }

  static Stream<QuerySnapshot> readEscuelasSecundarias() {
    CollectionReference escuelasCollection =
        _mainCollection.doc(userUid).collection('escuelas');

    return escuelasCollection.snapshots();
  }

  static Stream<QuerySnapshot> readEscuelasTerciarias() {
    CollectionReference escuelasCollection =
        _mainCollection.doc(userUid).collection('escuelas');

    return escuelasCollection.snapshots();
  }

  static Stream<QuerySnapshot> readEscuelasEspeciales() {
    CollectionReference escuelasCollection =
        _mainCollection.doc(userUid).collection('escuelas');

    return escuelasCollection.snapshots();
  }
}
