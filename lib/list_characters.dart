import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/characters_model.dart';
import 'package:rick_and_morty_app/request_handler.dart';

class ListCharacters extends StatelessWidget {
  final RequestHandler requestHandler = RequestHandler();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: requestHandler.fetchGetRequest(),
        builder: (BuildContext context,
            AsyncSnapshot<List<CharactersModel>> snapshot) {
              if(snapshot.hasData){
                var characters = snapshot.data;
                return ListView(
                  children: characters.map((e) => Container(child: Text("hello"))).toList()
                );
              }else{
                return Center(child: CircularProgressIndicator());
              }
            });
  }
}
