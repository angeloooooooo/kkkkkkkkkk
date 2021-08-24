import 'package:galeria_virtual/model/obras.dart';

class ObrasService {
// Lista de contatos (GLOBAL)
  List<Obras> obras = [];

  // Método para cadastrar contato
  void adicionarObras(Obras obras) {
    obras.add(obras);

    print("Adicionado");
  }

  // Método que retorna uma lista de contatos
  List listarObras() {
    obras = [
      Obras(id: 1, nome: "", sobrenome: "", email: "", foto: ""),
    ];
    return obras;
  }
}
