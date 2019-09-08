// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// TutoGridCell
//
// A Card helper
//
import 'package:flutter/material.dart';
import '../ExoApp.dart';

class TutoGridCell extends StatelessWidget
{
  final String _route;
  final String _name;
  final IconData _icon;
  final BuildContext _routes_context;

  const TutoGridCell(
      this._routes_context,
      this._name,
      this._icon,
      this._route, { Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1.0,
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          print(_route);
          Navigator.of(_routes_context).pushNamed(_route);
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Center(child: Icon(_icon)),
            Center(child: Text(_name)),
          ],
        ),
      ),
    );
  }
}