class Etudiant {
  String nom;
  String prenom;
  String email;
  String classe;
  String matricule;

  Etudiant({
    required this.nom,
    required this.prenom,
    required this.email,
    required this.classe,
    required this.matricule,
  });

  Map<String, dynamic> toJson() {
    return {
      'nom': nom,
      'prenom': prenom,
      'email': email,
      'classe': classe,
      'matricule': matricule,
    };
  }
}