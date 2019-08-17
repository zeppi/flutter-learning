// Copyright 2019 The Zeppilabs. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// Home page
//
// A grid with all exercise
//
import 'package:flutter/material.dart';
import 'package:starwars_api/TheHomeGridView.dart';
import 'package:starwars_api/JustAWizard.dart';

class TutoHome extends StatefulWidget {
  @override
  TutoHomeState createState() => TutoHomeState();
}

class TutoHomeState extends State<TutoHome> with SingleTickerProviderStateMixin {

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          bottom: makeTabBar(),
        ),
        body: makeTabBarView(<Widget>[
          TheHomeGridView(),
          JustAWizard()]),
      ),
    );
  }

  TabBar makeTabBar() {
    return TabBar(
        tabs: <Tab>[
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.android))
        ],
        controller: tabController);
  }

  TabBarView makeTabBarView(tabs) {
    return TabBarView(
      children: tabs,
      controller: tabController,
    );
  }
}