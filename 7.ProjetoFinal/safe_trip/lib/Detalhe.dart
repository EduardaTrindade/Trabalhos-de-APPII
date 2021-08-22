import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:safe_trip/View/BuscaVeiculo.dart';

class Detalhe extends StatelessWidget {
  // Valores vindos do Banco de Dados (simulação)
  final String foto = "img/mapa.jpg";
  final String suasViagens = "30 minutos";
  final String pagamento = "Selecionar Forma de Pagamento";
  final String favoritos = "1.123";
  final String comentariosDoMotorista = "Otima passageira";
  final String propostaDoApp = "Aplicativo de transporte especializado para idosos e também para PCD 's. Com ele, as pessoas terão mais conforto, assistência especializada, atenção necessária e uma viagem 100% segura.";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Foto
        new Image.asset(foto),

        // Título e Informações
        new Container(
          width: 500,
          color: Colors.grey.shade500,
          padding: new EdgeInsets.all(25),
          child:
          new Column(
            children: [
              // Botão Selecionar Destino
              new Builder(
                builder: (BuildContext context) {
                  return ElevatedButton(
                    child: Container(
                      width: 300,
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          new FaIcon(
                            FontAwesomeIcons.search,
                            color: Colors.white,
                            size: 24
                          ),

                          new Text(
                            "Selecionar Destino",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24
                            )
                          ),
                        ],
                      )
                    ),
                    
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => new BuscaVeiculo())
                      );
                    },

                    style: ElevatedButton.styleFrom(
                      primary: Colors.grey.shade700
                    )
                  );
                }
              ),

              // SizedBox(height: 20), // Caixa (altura, largura)
              // // new Padding(padding: new EdgeInsets.all(10)),

              // // Ícones
              // new Row(
              //   // Distribui os elementos (colunas)
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     // Preparo
              //     new Column(
              //       children: [
              //         FaIcon(
              //           FontAwesomeIcons.solidClock,
              //           color: Colors.white,
              //           size: 32,
              //         ),

              //         SizedBox(height: 10),

              //         // new Text(
              //         //   "TEMPO PARA VIAGEM SELECIONADA",
              //         //   style: new TextStyle(
              //         //     color: Colors.white,
              //         //     fontSize: 16,
              //         //     fontWeight: FontWeight.w600
              //         //   ),
              //         // ),

              //         SizedBox(height: 10),

              //         new Text(
              //           suasViagens,
              //           style: new TextStyle(
              //             color: Colors.white,
              //             fontSize: 16
              //           ),
              //         )
              //       ],
              //     ),

              //     // Rendimento
              //     new Column(
              //       children: [
              //         FaIcon(
              //           FontAwesomeIcons.barcode,
              //           color: Colors.white,
              //           size: 32,
              //         ),

              //         SizedBox(height: 10),

              //         // new Text(
              //         //   "PAGAMENTO",
              //         //   style: new TextStyle(
              //         //     color: Colors.white,
              //         //     fontSize: 16,
              //         //     fontWeight: FontWeight.w600
              //         //   ),
              //         // ),

              //         SizedBox(height: 10),

              //         new Text(
              //           pagamento,
              //           style: new TextStyle(
              //             color: Colors.white,
              //             fontSize: 16
              //           ),
              //         )
              //       ],
              //     ),

              //     // Favoritos
              //     new Column(
              //       children: [
              //         FaIcon(
              //           FontAwesomeIcons.heart,
              //           color: Colors.white,
              //           size: 32,
              //         ),

              //         SizedBox(height: 10),

              //         new Text(
              //           "LUGARES FAVORITOS",
              //           style: new TextStyle(
              //             color: Colors.white,
              //             fontSize: 16,
              //             fontWeight: FontWeight.w600
              //           ),
              //         ),

              //         SizedBox(height: 10),

              //         new Text(
              //           favoritos,
              //           style: new TextStyle(
              //             color: Colors.white,
              //             fontSize: 16
              //           ),
              //         )
              //       ],
              //     ),

              //     // Comentários
              //     new Column(
              //       children: [
              //         FaIcon(
              //           FontAwesomeIcons.solidComment,
              //           color: Colors.white,
              //           size: 32,
              //         ),

              //         SizedBox(height: 10),

              //         new Text(
              //           "ULTIMO COMENTÁRIO",
              //           style: new TextStyle(
              //             color: Colors.white,
              //             fontSize: 16,
              //             fontWeight: FontWeight.w600
              //           ),
              //         ),

              //         SizedBox(height: 10),

              //         new Text(
              //           comentariosDoMotorista,
              //           style: new TextStyle(
              //             color: Colors.white,
              //             fontSize: 16
              //           ),
        //       //         )
        //             ],
        //           ),
        //         ],
        //       )
        //     ],
        //   )
        // ),

        // new SizedBox(height: 10),

        // // Ingredientes
        // new Container(
        //   child: new Column(
        //     children: [
        //       // Ícone e Texto (Ingredientes)
        //       new Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           FaIcon(
        //             FontAwesomeIcons.carAlt,
        //             color: Colors.orange.shade700,
        //             size: 32,
        //           ),

        //           SizedBox(width: 10),

        //           new Text(
        //             "ENDEREÇO VIAGEM SELECIONADA",
        //             style: new TextStyle(
        //               color: Colors.orange.shade700,
        //               fontSize: 24,
        //               fontWeight: FontWeight.bold
        //             ),
        //           )
        //         ],
        //       ),

        //       // Lista de Ingredientes
        //       new Container(
        //         padding: EdgeInsets.all(20),
        //         child: new Text(
        //           "\u2022 QI Escolas e Faculdades\n" +
        //           "\u2022 Endereço: Av. Victor Barreto, 780 - Mathias Velho, Canoas - RS, 92010-050\n",

        //           style: new TextStyle(
        //             fontSize: 18
        //           )
        //         )
        //       ),

        //       // Ícone e Texto (Modo de Preparo)
        //       new Row(
        //         mainAxisAlignment: MainAxisAlignment.center,
        //         children: [
        //           FaIcon(
        //             FontAwesomeIcons.carAlt,
        //             color: Colors.orange.shade700,
        //             size: 32,
        //           ),

        //           SizedBox(width: 10),

        //           new Text(
        //             "TIPO DE VEÍCULO DESEJADO",
        //             style: new TextStyle(
        //               color: Colors.orange.shade700,
        //               fontSize: 24,
        //               fontWeight: FontWeight.bold
        //             ),
        //           )
        //         ],
        //       ),

        //       // Modo de Preparo
        //       new Container(
        //         padding: EdgeInsets.all(20),
        //         child: new Text(
        //           "Modelo de veículo com capacidade para cadeira de rodas\n"+
        //           "Modelo: Volkswagen T-Cross Sense\n"+
        //           "Placa: ABC0D00\n"+
        //           "Cor: Prata",

        //           style: new TextStyle(
        //             fontSize: 18
        //           )
        //         )
        //       ),
        //     ],
        //   )
    ],

        // new SizedBox(height: 50),
    
    ))]);
  }
}