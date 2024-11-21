class FormationModel {
  final String image, title, salle, duree;
  final int placeRestant;
  final int nbPlaceTotal;

  const FormationModel({
    required this.image,
    required this.title,
    required this.placeRestant,
    required this.salle,
    required this.duree,
    required this.nbPlaceTotal,
  });
}
