
import 'package:flutter/material.dart';

class StarWarsCard
{
  /// The string to show in Card.
  final String _titel;

  const StarWarsCard(this._titel);

  Card build() {
    return Card(
      child: Container(
          padding: EdgeInsets.all(15.0),
          child: Text(
              this._titel,
              style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black54
              ))
      ),
    );
  }
}
