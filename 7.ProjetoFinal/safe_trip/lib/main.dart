import 'package:flutter/material.dart' show MaterialApp, runApp;
import 'package:safe_trip/Recursos/Estilo.dart';
import 'SafeTrip.dart';


void main() => runApp(
  MaterialApp(
    title: "App Safe Trip",
    home: SafeTrip(),
    debugShowCheckedModeBanner: false,  // Retirar o DEBUG da AppBar
    theme: estilo(),
   
  )
);
