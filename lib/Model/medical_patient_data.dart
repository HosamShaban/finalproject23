class MedicalData {
  late String DiabeticType;
  late String PaitentProplem;
  late String attachments;

  MedicalData(this.DiabeticType, this.PaitentProplem, this.attachments);

  MedicalData.fromjson(Map<String, dynamic> map) {
    this.DiabeticType = map['*** حسب الاسم جهة api'];
    this.PaitentProplem = map['***'];
    this.attachments = map['***']['url'];
  }
}
