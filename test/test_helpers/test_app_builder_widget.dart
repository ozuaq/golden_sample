import 'package:flutter/material.dart';
import 'package:golden_test_sample/app/config/app_theme.dart';

import 'test_route_generator.dart';
import 'test_widgets/test_home_page.dart';

class TestAppBuilder {
  static const String targetPageRouteName = RouteGenerator.targetPageRouteName;

// MaterialAppのhomeを受け取る関数
  static createMaterialAppWithHome({
    required Widget homeWidget,
    bool useRouteGenerator = false,
  }) {
    if (useRouteGenerator) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appThemeData,
        onGenerateRoute: RouteGenerator(targetPage: homeWidget).generateRoute,
        initialRoute: TestHomePage.routeName,
      );
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appThemeData,
      home: homeWidget,
    );
  }

// Scaffoldのbodyを受け取る関数
  static createScaffoldWithBody({
    required Widget bodyWidget,
  }) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('テスト対象のページ'),
      ),
      body: bodyWidget,
    );
  }
}
