import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safe_trip/Model/ListaVeiculos.dart';
import 'package:safe_trip/Model/VeiculosViagem.dart';
import 'package:safe_trip/View/Recursos/Menu.dart';

 class PerfilVeiculo extends StatelessWidget{
 final int id;

 PerfilVeiculo({ required this.id});

final ListaVeiculos service = new ListaVeiculos();

  get floatingActionButton => null;

@override
Widget build (BuildContext context) {
 // ignore: unused_local_variable
 VeiculosViagem veiculosViagem = service.listarVeiculos().elementAt(this.id -1);
 
 return Scaffold(
   //barra titulo


   //menu

   drawer: new MenuDrawer(),

   //corpo do app

body: new Container(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: Column(
          children: [
            // Foto
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Image.asset(
                  veiculosViagem.fotoCarro,
                  height: 350
                )
              ]
            ),

            SizedBox(height: 25),

            // Nome
            new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                new Text(
                  veiculosViagem.nomeDoMotorista,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                    letterSpacing: 3,
                    wordSpacing: 3
                  )
                )
              ]
            ),

            // SizedBox(height: 10),

            // Fone
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Fone
                new Text(
                  veiculosViagem.foneMotorista,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18
                  )
                ),

                //placa
                new Text(
                  veiculosViagem.placa,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18
                  )
                ),

                // ano
                new Text(
                  veiculosViagem.ano,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18
                  )
                ),

              // modelo
                new Text(
                  veiculosViagem.modelo,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18
                  )
                ),


                // marca
                new Text(
                  veiculosViagem.marca,
                  style: TextStyle(
                    color: Colors.grey.shade400,
                    fontSize: 18
                  )
                )
              ]
            ),

            // Divisor
            new Container(
              padding: EdgeInsets.only(top: 25, bottom: 25),
              child: Divider(height: 5)
            ),

            // Ações
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Ligar
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.pink.shade100,
                      size: 28,
                    ),

                    SizedBox(height: 15),

                    new Text(
                      "Ligar",
                      style: TextStyle(
                        color: Colors.pink.shade100,
                        fontSize: 18
                      )
                    )
                  ]
                ),

                // Mensagem
                new Column(
                  children: [
                    new FaIcon(
                      FontAwesomeIcons.solidCommentDots,
                      color: Colors.pink.shade100,
                      size: 28,
                    ),

                    SizedBox(height: 15),

                    new Text(
                      "Chat",
                      style: TextStyle(
                        color: Colors.pink.shade100,
                        fontSize: 18
                      )
                    )
                  ]
                ),
               ] )
               ] ) 
)
);
   
  }
}