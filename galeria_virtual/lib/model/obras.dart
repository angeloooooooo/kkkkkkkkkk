class Obras {
  int id;
  String nome;
  String sobrenome;
  String email;
  String foto;

  Obras(
      {required this.id, // required = obrigatório
      required this.nome,
      required this.sobrenome,
      required this.email,
      required this.foto});

  void add(Obras obras) {}
} 

// Nome da Classe: Inicia com letra maiúscula
// Cameclasse
// NomeDaClasse