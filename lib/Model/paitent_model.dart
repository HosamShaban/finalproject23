import 'dart:ffi';

class PaitentModel {
  late int id;
  late String name;
  late String gender;
  late String DOB;
  late Long phoneNom;
  late String gmail;

  PaitentModel(
      this.id, this.name, this.gender, this.DOB, this.gmail, this.phoneNom);

  PaitentModel.fromjson(Map<String, dynamic> map) {
    this.id = map['*** حسب الاسم جهة api'];
    this.name = map['***'];
    this.gender = map['***'];
    this.DOB = map['***'];
    this.gmail = map['***'];
    this.phoneNom = map['***'];
  }
}
