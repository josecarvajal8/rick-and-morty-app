import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/characters_model.dart';

class RequestHandler {
  Future<List<CharactersModel>> fetchGetRequest() async {
    String endpoint = 'https://rickandmortyapi.com/api/character/';
    http.Response res = await http.get(endpoint);
    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      return body
          .map((dynamic character) => CharactersModel.fromJson(character));
    }else{
      throw "We're fucked up";
    }
  }
}
