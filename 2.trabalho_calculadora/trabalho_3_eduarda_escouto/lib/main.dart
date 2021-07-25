import 'package:trabalho_3_eduarda_escouto/Calculadora.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(CalculadoraSimples());
}

class CalculadoraSimples extends StatelessWidget {
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "Calculadora Simples",
      theme: new ThemeData(primarySwatch: Colors.pink),
      home: new Calculadora(),
    );
  }
}
