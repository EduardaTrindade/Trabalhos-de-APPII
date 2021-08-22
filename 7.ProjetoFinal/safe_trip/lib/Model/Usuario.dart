class Usuario {
  //Atributos
  int id;
  String nome;
  String sobrenome;
  String email;
  String fone;
  String foto;
  String pagamento;

  Usuario({
      required this.id,
      required this.nome,
      required this.sobrenome,
      required this.email,
      required this.fone,
      required this.foto,
      required this.pagamento
   });

  void add(Usuario usuario) {}   
}
