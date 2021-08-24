import 'package:flutter/material.dart';
import 'package:safe_trip/Model/Contato.dart';
import 'package:safe_trip/Model/ContatoService.dart';
import 'Busca.dart';
import 'Recursos/Menu.dart';

class Cadastro extends StatefulWidget {
  @override
  State createState() => new CadastroState();
}

class CadastroState extends State<Cadastro> {
  // Controladores dos campos Input
  final nome = TextEditingController();
  final sobrenome = TextEditingController();
  final email = TextEditingController();
  final fone = TextEditingController();
  final foto = TextEditingController();
  final pagamento = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: new BarraSuperior(),
        drawer: new MenuDrawer(),
        body: SingleChildScrollView(
            // Formulário
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 35),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey.shade800),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Título
                      new Container(
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(bottom: 15),
                          child: Text("Cadastro de Usuário",
                              style: TextStyle(
                                  color: Colors.grey.shade300, fontSize: 24))),

                      // Inputs
                      campoInput("Nome", nome),
                      campoInput("Sobrenome", sobrenome),
                      campoInput("E-mail", email),
                      campoInput("Fone", fone),
                      campoInput("Foto", foto),
                      campoInput("Forma de Pagamento", pagamento),

                      SizedBox(height: 15),

                      // Botões
                      new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // Botão Cadastrar
                            new Builder(builder: (BuildContext context) {
                              return ElevatedButton(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 10),
                                      child: Text("Cadastrar",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18))),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.grey.shade500),
                                  onPressed: () {
                                    cadastrar();
                                  });
                            }),

                            // Botão Limpar
                            new Builder(builder: (BuildContext context) {
                              return ElevatedButton(
                                  child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25, vertical: 10),
                                      child: Text("Limpar",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18))),
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.grey.shade700),
                                  onPressed: () {
                                    limparCampos();
                                  });
                            }),
                          ]),
                    ]))));
  } // fecha BUILD

  // Retorna a estrutura do campo input
  Container campoInput(String nomeCampo, TextEditingController controlador) {
    return Container(
        margin: EdgeInsets.only(bottom: 10),
        child: TextField(
            // Atributo que recebe o valor do campo
            controller: controlador,
            decoration: InputDecoration(
                labelText: nomeCampo, // Nome do campo
                labelStyle:
                    TextStyle(color: Colors.grey.shade300, fontSize: 18),

                // Borda do Input
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),

                // Borda do Input selecionado
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white)))));
  }

  // Cadastrar
  void cadastrar() {
    ContatoService service = new ContatoService();

    // Guarda o último ID
    int ultimoID = service.listarContatos().length;

    Contato contato = new Contato(
        id: ultimoID,
        nome: nome.text,
        sobrenome: sobrenome.text,
        email: email.text,
        fone: fone.text,
        //foto: foto.text

        foto: foto.text.isNotEmpty ? foto.text : "img/no-avatar.png",
        /* O campo foto recebe foto.text (informado no formulário),
        se não estiver vazio, senão recebe uma imagem padrão.
        IF Ternário */
        pagamento: pagamento.text);

    // Envia o objeto preenchido para adicionar na lista
    String mensagem = service.cadastrarContato(contato);

    // Mensagem
    ScaffoldMessenger.of(context).showSnackBar(new SnackBar(
        content: Text(
          mensagem,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey.shade300),
        ),
        duration: Duration(milliseconds: 2000),
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.grey.shade800));

    // Redireciona para a página de Busca
    Future.delayed(Duration(milliseconds: 2500), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => new Busca()));
    });
  }

  // Limpar campos
  void limparCampos() {
    this.nome.text = "";
    this.sobrenome.text = "";
    this.email.text = "";
    this.fone.text = "";
    this.foto.text = "";
    this.pagamento.text = "";
  }
}
