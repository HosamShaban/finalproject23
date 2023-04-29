class Mesures {
  late int Fasting;
  late int creator;
  late int random;

  Mesures(this.Fasting, this.creator, this.random);

  Mesures.fromjson(Map<String, dynamic> map) {
    this.Fasting = map['*** حسب الاسم جهة api'];
    this.creator = map['***'];
    this.random = map['***']['url'];
  }
}
