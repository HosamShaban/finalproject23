class HomeModel {
  late String title;
  late String image;

  HomeModel(this.title, this.image);
  HomeModel.fromjson(Map<String, dynamic> map) {
    this.title = map['title'];
    this.image = map['image'];
  }
}
