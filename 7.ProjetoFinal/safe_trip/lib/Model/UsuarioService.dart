import 'package:safe_trip/Model/Usuario.dart';

class UsuarioService {
  // Lista de Usuarios (GLOBAL)
  static List<Usuario> usuario = [];

  // Método para cadastrar um Usuario
  String cadastrarUsuario(Usuario usuario) {
    usuario.add(usuario);

    return "Novo usuário: ${usuario.nome} ${usuario.sobrenome}";
  }

  // Método que retorna uma lista de contatos
  List listarUsuario() {
    // usuario = [
    //   Usuario(
    //     id: 1,
    //     nome: "Beatriz",
    //     sobrenome: "Kern",
    //     email: "bia.kern@gmail.com",
    //     fone: "(51) 99988-7766",
    //     foto: "img/no-avatar.png", 
    //     pagamento: "Dinheiro"
    //   )];
  
     return usuario;
  }
}