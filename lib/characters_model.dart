class CharactersModel {
  final List info;
  final List results;
  CharactersModel({this.info, this.results});
  factory CharactersModel.fromJson(Map<String, dynamic> json) {
    return CharactersModel(info: json['info'], results: ['results']);
  }
}
