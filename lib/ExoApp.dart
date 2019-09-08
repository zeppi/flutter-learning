// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Exo Application is the root test application
//
import 'package:flutter/material.dart';

class ExoApp extends InheritedWidget
{
  ExoApp({@required Widget child}) : super(child: child);

  static ExoApp of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(ExoApp);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
