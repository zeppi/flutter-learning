import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'StarWarsCard.dart';

void main() => runApp(MaterialApp(
  home: StarWarsData(),
));


class StarWarsData extends StatefulWidget {
  @override
  StarWarsState createState() => StarWarsState();
}

class StarWarsState extends State<StarWarsData> {
  final String url = "https://swapi.co/api/starships";
  List data;

  Future<String> getSWData() async {
    var res = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var resBody = json.decode(res.body);
      data = resBody["results"];
    });

    return "Success!";
  }

  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Star Wars Starships"),
        backgroundColor: Colors.amberAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.push(ctx, Tuto2());
            },
          )
        ],
      ),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext ctx, int index){
            return new Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      StarWarsCard(data[index]["name"]).build(),
                      StarWarsCard(data[index]["model"]).build(),
                    ],
                ),
              ),
            );
          }),

    );
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }
}

class Tuto2 extends MaterialPageRoute<Null>
{
  Tuto2() : super( builder: (BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tuto 2"),
        backgroundColor: Theme
            .of(ctx)
            .accentColor,
        elevation: 2.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(ctx);
            },
          )
        ],
      ),
    );
  });
}