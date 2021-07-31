import 'package:flutter/material.dart';

class StackPilha extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new StackPilhaState();
}

class StackPilhaState extends State<StackPilha> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      //Barra de título
      appBar: new AppBar(title: new Text("Stack - Pilha")),

      //Menu Lateral
      drawer: new Drawer(
          //Listview <-- Item da Lista

          ),

      //Corpo do app
      body: new Stack(children: [
        //Elemento que está abaixo
        new Container(
          child: new Text(
            "Stack 1",
            style: new TextStyle(fontSize: 32),
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          width: 350, //Largura
          height: 450, //Altura
          color: Colors.blueAccent,
        ),

        //Elemento 2 (acima de 1)
        new Container(
            child: new Text(
              "Stack 2",
              style: new TextStyle(fontSize: 32),
            ),
            margin: EdgeInsets.all(15),
            padding: EdgeInsets.all(15),
            width: 300,
            height: 400,
            color: Colors.redAccent),

        //Elemento 3 (acima do 2)
        new Container(
            child: new Text(
              "Stack 3",
              style: new TextStyle(fontSize: 32),
            ),
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            width: 250,
            height: 350,
            color: Colors.green)
      ]),

      //Barra de icones
      bottomNavigationBar: new BottomNavigationBar(items: [
        //ícone home
        BottomNavigationBarItem(label: "Home", icon: new Icon(Icons.home)),

        //ícone sair
        BottomNavigationBarItem(label: "Sair", icon: new Icon(Icons.logout))
        ]
      ),
    )
  );
}
}
