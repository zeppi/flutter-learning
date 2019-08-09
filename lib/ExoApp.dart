// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Exo Application is the root test application
//
import 'package:flutter/material.dart';

import 'TutoHome.dart';
import 'StarWars.dart';

class ExoApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Exo',
        routes: {
          '/': (context) => TutoHome(),
          '/starwars': (context) => StarWarsData()
        });
  }
}
