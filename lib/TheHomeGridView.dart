// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Grid View
//
//
import 'package:flutter/material.dart';
import 'appWidgets/TutoGridCell.dart';

class TheHomeGridView extends StatelessWidget
{
  final BuildContext _routes_context;

  const TheHomeGridView(
      this._routes_context,
      { Key key }) : super(key: key);

  @override
  GridView build(BuildContext context) {
    return GridView.count(
        primary: true,
        padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 1.0,
        crossAxisSpacing: 1.0,
        children: <Widget>[
          TutoGridCell(_routes_context, "StarWars", Icons.home, '/starwars'),
          TutoGridCell(_routes_context, "Tweening", Icons.email,'/tweening'),
          TutoGridCell(_routes_context, "Chat", Icons.chat_bubble, '/'),
          TutoGridCell(_routes_context, "News", Icons.new_releases, '/'),
          TutoGridCell(_routes_context, "Network", Icons.network_wifi, '/'),
          TutoGridCell(_routes_context, "Options", Icons.settings, '/'),
        ]);
  }
}