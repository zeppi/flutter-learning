import 'package:flutter/material.dart';

import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

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
      ),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext ctx, int index){
            return new Container(
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Card(
                        child: Container(
                          padding: EdgeInsets.all(15.0),
                          child: Text(data[index]["name"],
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.black54
                          ))
                        ),
                      ),
                      Card(
                        child: Container(
                            padding: EdgeInsets.all(15.0),
                          child: Text(data[index]["model"],
                           style: TextStyle(
                             fontSize: 18.0,
                             color: Colors.black54
                           ))
                        ),
                      ),
                    ],
                ),
              ),
            );
          })
    );
  }

  @override
  void initState() {
    super.initState();
    this.getSWData();
  }
}