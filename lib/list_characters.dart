import 'package:flutter/material.dart';
import 'package:rick_and_morty_app/request_handler.dart';
class ListCharacters extends StatelessWidget {
  final RequestHandler requestHandler = RequestHandler();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: requestHandler.fetchGetRequest(),
      builder: null);

  }

}