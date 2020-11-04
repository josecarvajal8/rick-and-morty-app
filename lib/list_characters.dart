import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/character_card.dart';
import 'package:rick_and_morty_app/request_handler.dart';

class ListCharacters extends StatelessWidget {
  final RequestHandler requestHandler = RequestHandler();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: requestHandler.fetchGetRequest(),
        builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            var characters = snapshot.data;
            return ListView(
                children: characters.map((e) {
                  var name = e['name'] ?? '';
                  var species = e['species'] ?? 'no species';
                  var image = e['image'] ?? '';
              return CharacterCard(name, species, image);
            }).toList());
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
