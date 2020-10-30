import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/characters_model.dart';

class RequestHandler {
  Future<List<CharactersModel>> fetchGetRequest() async {
    String endpoint = 'https://rickandmortyapi.com/api/character/';
    http.Response res = await http.get(endpoint);
    print(res);
    print(jsonDecode(res.body));
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body).results;
      return data.map((element) => CharactersModel.fromJson(element));
    }else{
      throw "We're fucked up";
    }
  }
}
