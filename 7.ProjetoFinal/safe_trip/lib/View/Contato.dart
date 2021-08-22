import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safe_trip/Model/Usuario.dart';
import 'package:safe_trip/Model/UsuarioService.dart';
import 'package:safe_trip/View/Cadastro.dart';
import 'package:safe_trip/View/Recursos/PerfilUsuario.dart';
import 'Recursos/Menu.dart';

class Contato extends StatefulWidget {
  @override
  State createState() => new ContatoState();
}

class ContatoState extends State<Contato> {
  // Objeto da classe UsuarioService (Model)
  UsuarioService service = new UsuarioService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de Título

      // Menu (hambúrguer)
      drawer: new MenuDrawer(),

      // Corpo do App
      body: ListView.builder(
        padding: EdgeInsets.fromLTRB(8, 8, 8, 75),
        itemCount: service.listarUsuario().length,
        itemBuilder: (BuildContext context, int index) {
          // Guarda o retorno da lista no objeto da classe
          Usuario usuario = service.listarUsuario().elementAt(index);

          
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
                      usuario.foto,
                      width: 75,
                      height: 75,
                      fit: BoxFit.cover
                    )
                  ),
                  // Nome e Fone
                  new Column(
                    children: [
                      new Text(
                        usuario.nome,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 24
                        )
                      ),

                      SizedBox(height: 10),

                      new Text(
                        usuario.fone,
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
                      builder: (context) => Perfil(id: usuario.id)
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