import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:galeria_virtual/view/home.dart';
import 'package:galeria_virtual/view/recursos/estilo.dart';

void main() => runApp(new MaterialApp(
      title: "Galeria Virtual",
      home: new Home(),
      debugShowCheckedModeBanner: false,
      theme: estilo(),
    ));
