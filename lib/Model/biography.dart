class Biography {
  late String diagnosis; // تشخيص
  late String treatment; // علاج

  Biography(this.diagnosis, this.treatment);

  Biography.fromjson(Map<String, dynamic> map) {
    this.diagnosis = map['*** حسب الاسم جهة api'];
    this.treatment = map['***'];
  }
}
