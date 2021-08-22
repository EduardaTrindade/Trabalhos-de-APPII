import 'package:safe_trip/Model/VeiculosViagem.dart';

class ListaVeiculos {
  List listarVeiculos() {
    List<VeiculosViagem> veiculosViagem = [

    VeiculosViagem(


        id:1,
        nomeDoMotorista: "Reinaldo Santos",
        foneMotorista: "(51) 91234-5678",
        modelo: "fit",
        ano:"2015",
        placa: "IVA9060",
        marca: "Honda",
        fotoCarro: "img/fotos_carros/fit.png",

    ),
    VeiculosViagem(


        id:2,
        nomeDoMotorista: "Josair Silva",
        foneMotorista: "(51) 94444-5678",
        modelo: "kwid",
        ano:"2019",
        placa: "OPD9768",
        marca: "Renault",
        fotoCarro: "img/fotos_carros/kwid.jpg",

    ),
    VeiculosViagem(


        id:3,
        nomeDoMotorista: "Sebastião Oliveira",
        foneMotorista: "(51) 91234-4444",
        modelo: "logan",
        ano:"2020",
        placa: "RTV3030",
        marca: "Renault",
        fotoCarro: "img/fotos_carros/logan.jpg",

    ),
    VeiculosViagem(


        id:4,
        nomeDoMotorista: "Bernardo Silveira",
        foneMotorista: "(51) 91234-5555",
        modelo: "onix",
        ano:"2019",
        placa: "SDF8050",
        marca: "Chevrolet",
        fotoCarro: "img/fotos_carros/onix.png",

    ),
    VeiculosViagem(


        id:5,
        nomeDoMotorista: "Nelson Ferreira",
        foneMotorista: "(51) 91234-1568",
        modelo: "t-cross",
        ano:"2015",
        placa: "IVA9060",
        marca: "Volkswagen",
        fotoCarro: "img/fotos_carros/tcross.jpg",

    ),
    VeiculosViagem(


        id:6,
        nomeDoMotorista: "Carlos Cardoso ",
        foneMotorista: "(51) 91684-5465",
        modelo: "tiggo 2",
        ano:"2015",
        placa: "IVA9060",
        marca: "Chery",
        fotoCarro: "img/fotos_carros/tiggo2.jpg",

    ),


    ];

    return veiculosViagem;

  }
}