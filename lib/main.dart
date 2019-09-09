// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Main application entry
//
// Learning Flutter and Dart step by step.
// Goal is just to test and try widgets and snipets code
//
import 'package:flutter/material.dart';
import 'ExoApp.dart';

import 'TutoHome.dart';
import 'StarWars.dart';
import 'Tweening.dart';

void main()=> runApp(ExoApp(child: new MaterialApp(
    title: 'Exo',
    routes: {
      '/': (_) => TutoHome(),
      '/starwars': (_) => StarWarsData(),
      '/tweening': (_) => Tweening()
    }),));
