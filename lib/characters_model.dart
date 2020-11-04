class CharactersModel {
  final String id;
  final String name;
  final String image;
  CharactersModel({this.id, this.name, this.image});
  factory CharactersModel.fromJson(Map<dynamic, dynamic> json) {
    return CharactersModel(
        id: json['id'], name: json['name'], image: json['image']);
  }
}
