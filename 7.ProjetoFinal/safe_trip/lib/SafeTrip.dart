import 'package:flutter/material.dart';
import 'package:safe_trip/Detalhe.dart';
import 'package:safe_trip/View/Recursos/Menu.dart';


class SafeTrip extends StatefulWidget {
  @override
  State createState() => new SafeTripState();
}

class SafeTripState extends State<SafeTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título
      appBar: new AppBar(
        title: new Text("Safe Trip"),
        backgroundColor: Colors.grey.shade400,
        leadingWidth: 45,
        leading: new Transform.translate(
          offset: new Offset(5, 0),
          child: new Image.asset("img/iconcarro.png")
        ),
      ),

      // Menu de opções
      endDrawer: new MenuDrawer(),

      // Corpo do App
      body: new SingleChildScrollView(
        child: new Detalhe()
      ),

      // Barra inferior
      // bottomNavigationBar: ,
    );
  }
}