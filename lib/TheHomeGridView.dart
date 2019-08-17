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
          TutoGridCell("StarWars", Icons.home, '/starwars'),
          TutoGridCell("Email", Icons.email,'/'),
          TutoGridCell("Chat", Icons.chat_bubble, '/'),
          TutoGridCell("News", Icons.new_releases, '/'),
          TutoGridCell("Network", Icons.network_wifi, '/'),
          TutoGridCell("Options", Icons.settings, '/'),
        ]);
  }
}