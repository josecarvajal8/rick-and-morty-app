import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:rick_and_morty_app/characters_model.dart';

class RequestHandler {
  Future<List<dynamic>> fetchGetRequest() async {
    String endpoint = 'https://rickandmortyapi.com/api/character/';
    http.Response res = await http.get(endpoint);
    if (res.statusCode == 200) {
      var data = jsonDecode(res.body);
      print("data");
      print(data['results']);
      return data['results'];
    } else {
      throw "We're fucked up";
    }
  }
}
