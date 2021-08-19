import 'package:agenda_contatos/View/Home.dart';
import 'package:agenda_contatos/View/Recursos/Estilo.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  new MaterialApp(
    title: "Agenda de Contatos",
    home: new Home(),
    debugShowCheckedModeBanner: false,
    theme: estilo(),
  )
);
