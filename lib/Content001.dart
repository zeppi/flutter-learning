// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Main application entry
//
// Learning Flutter and Dart step by step.
// Goal is just to test and try widgets and snipets code
//
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

//class Content001 extends StatelessWidget
class Content001 extends StatefulWidget {
  @override
  _Content001 createState() {
    return new _Content001();
  }
}

class _Content001 extends State<Content001> {

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
          //
        }),
        title: Text("Feedback"),
        actions: <Widget>[],
      ),
      body: Container(
        color: Color(0xffE5E5E5),
        child: Column(
          children: <Widget>[
            Container(child:Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(child: Text("das",
                style: TextStyle(color: Colors.black, fontSize: 22.0,fontWeight:FontWeight.bold),)),
            ),),
            Container(
              child: Align(
                child: Material(
                  color: Colors.white,
                  elevation: 14.0,
                  borderRadius: BorderRadius.circular(24.0),
                  shadowColor: Color(0x802196F3),
                  child: Container(
                      width: 350.0,
                      height: 400.0,
                      child: Column(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Text("dd",
                            style: TextStyle(color: Colors.black, fontSize: 22.0),)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Slider(
                            min: 0.0,
                            max: 100.0,
                            divisions: 5,
                            value: 2,
                            activeColor: Color(0xffe05f2c),
                            inactiveColor: Colors.blueGrey,
                            onChanged: (newValue) {
                              setState(() {
                                print(newValue);
                              });
                            },
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(child: TextField(
                            decoration: new InputDecoration(
                              border: new OutlineInputBorder(
                                  borderSide: new BorderSide(color: Colors.blueGrey)),
                              hintText: 'Add Comment',
                            ),
                            style: TextStyle(height: 3.0),
                          ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(child: Align(
                            alignment: Alignment.bottomRight,
                            child: RaisedButton(
                              shape:RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                              color: Color(0xffe05f2c),
                              child: Text('Submit',
                                style: TextStyle(color: Color(0xffffffff)),),
                              onPressed: () {

                              },
                            ),
                          )),
                        ),
                      ],)
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


