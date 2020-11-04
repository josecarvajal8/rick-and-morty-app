import 'package:flutter/material.dart';

class CharacterCard extends StatelessWidget {
  String name;
  String species;
  String image;
  CharacterCard(this.name, this.species, this.image);
  @override
  Widget build(BuildContext context) {
    final photo = Container(
        margin: EdgeInsets.only(top: 20.0, left: 20.0),
        width: 80.0,
        height: 80.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(image))));
    final nameField = Container(
        child: Text(name,
            textAlign: TextAlign.left, style: TextStyle(fontSize: 20.0)));

    final speciesField = Container(
        child: Text(species,
            textAlign: TextAlign.left, style: TextStyle(fontSize: 15.0)));
    final characterDetail = Container(
      child: Column(children: <Widget>[nameField, speciesField]),
      margin: EdgeInsets.only(top: 20.0, left: 10.0),
    );
    return Row(
      children: <Widget>[photo, characterDetail],
    );
  }
}
