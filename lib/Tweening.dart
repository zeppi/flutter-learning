// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Tweening
//
// Try to do exercice https://flutterbyexample.com/step-one-tweening
//

import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class Tweening extends StatefulWidget
{
  @override
  _TweeningState createState() => new _TweeningState();
}

class _TweeningState extends State<Tweening> with SingleTickerProviderStateMixin
{
  AnimationController _controller;
  Animation<Color> animation;

  @override
  void initState() {
    super.initState();

    _controller = new AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this
    );
  
    animation = new ColorTween(
      begin: const Color.fromRGBO(50, 10, 10, 0.5),
      end: const Color.fromRGBO(0, 200, 100, 0.5)
    ).animate(_controller);

    animation.addListener(() {
        setState((){});
      });

    animation.addStatusListener((s){
      if(s == AnimationStatus.completed){
        _controller.reverse();
      } else if (s == AnimationStatus.dismissed){
        _controller.forward();
      }
    });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Container(child: new MyAnimation(animation: animation));
  }
}

class MyAnimation extends AnimatedWidget {
  const MyAnimation({Key key, Animation animation})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    Animation animation = listenable;

    return new Container(
      child: new Center(
        child: new Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Bar(),
            new Bar(),
            new Bar(),
        new Container(
          width: 35.0,
          height: 15.0,
          decoration: new BoxDecoration(
              color: const Color.fromRGBO(0, 0, 255, 1.0),
              borderRadius: new BorderRadius.circular(10.0),
              boxShadow: [
                new BoxShadow(
                  color: Colors.black12,
                  blurRadius: 8.0,
                  spreadRadius: 1.0,
                  offset: new Offset(1.0, 0.0),
                ),
                new BoxShadow(
                  color: animation.value,
                  blurRadius: 6.0,
                  spreadRadius: 1.5,
                  offset: new Offset(1.0, 0.0),
                ),
              ]),
        );,
          ],
        ),
      ),
    );
  }
}

class Bar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 35.0,
      height: 15.0,
      decoration: new BoxDecoration(
          color: const Color.fromRGBO(0, 0, 255, 1.0),
          borderRadius: new BorderRadius.circular(10.0),
          boxShadow: [
            new BoxShadow(
              color: Colors.black12,
              blurRadius: 8.0,
              spreadRadius: 1.0,
              offset: new Offset(1.0, 0.0),
            ),
            new BoxShadow(
              color: Colors.black26,
              blurRadius: 6.0,
              spreadRadius: 1.5,
              offset: new Offset(1.0, 0.0),
            ),
          ]),
    );
  }
}