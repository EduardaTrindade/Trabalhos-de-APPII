import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safe_trip/Model/ListaVeiculos.dart';
import 'package:safe_trip/Model/VeiculosViagem.dart';
import 'Recursos/Menu.dart';
import 'Recursos/PerfilVeiculo.dart';

class BuscaVeiculo extends StatefulWidget {
  @override
  State createState() => new BuscaState();
}

class BuscaState extends State<BuscaVeiculo> {
  // Objeto da classe ContatoService (Model)
  ListaVeiculos service = new ListaVeiculos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de Título

      // Menu (hambúrguer)
      drawer: new MenuDrawer(),

      // Corpo do App
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
        itemCount: service.listarVeiculos().length,
        itemBuilder: (BuildContext context, int index) {
          // Guarda o retorno da lista no objeto da classe
          VeiculosViagem veiculos = service.listarVeiculos().elementAt(index);

          
         return Container(
            color: Colors.grey.shade800,
            padding: EdgeInsets.all(5),
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
            child: ListTile(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Foto (miniatura)
                  new ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      veiculos.fotoCarro,
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover
                    )
                  ),
                  // Nome e Fone
                  new Column(
                    children: [
                      new Text(
                        veiculos.nomeDoMotorista,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 24
                        )
                      ),

                      SizedBox(height: 10),

                      new Text(
                        veiculos.foneMotorista,
                        style: TextStyle(
                          fontSize: 18
                        )
                      )
                    ],
                  ),

                  SizedBox(width: 15)
                ]
              ),

              trailing: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.chevronRight,
                  color: Colors.grey,
                  size: 32
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => new PerfilVeiculo(id: veiculos.id)
                                  )
                  );
                }
              )
            )
          );
        }
      ),

      //botão flutuante
      floatingActionButton: FloatingActionButton(
        child: FaIcon(
          FontAwesomeIcons.plus,
          size: 32,
          color: Colors.white,
        ),
        onPressed: (){

        },
      ),

    );
  }
}