import 'dart:ffi';

class AllDoctorsModel {
  late int id;
  late String name;
  late String descrption;
  late String city;
  late Long phoneNom;
  late String img;
  late int noLikes;
  late int noViewrs;

  AllDoctorsModel(this.id, this.name, this.descrption, this.city, this.noLikes,
      this.noViewrs, this.phoneNom, this.img);

  AllDoctorsModel.fromjson(Map<String, dynamic> map) {
    this.id = map['*** حسب الاسم جهة api'];
    this. name = map['***'];
    this.img = map['***']['url'];
    this.phoneNom = map['***'];
    this.city = map['***'];
    this.noViewrs = map['***'];
    this.noLikes = map['***'];
  }
}
