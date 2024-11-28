import 'package:flutter/material.dart';
import 'package:golden_test_sample/app/config/app_theme.dart';

// MaterialAppのhomeを受け取る関数
MaterialApp createMaterialAppWithHome({required Widget homeWidget}) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appThemeData,
    home: homeWidget,
  );
}

// Scaffoldのbodyを受け取る関数
Scaffold createScaffoldWithBody({required Widget bodyWidget}) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Widget Test'),
    ),
    body: bodyWidget,
  );
}
