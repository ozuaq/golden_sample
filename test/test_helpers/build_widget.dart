import 'package:flutter/material.dart';

// MaterialAppのhomeを受け取る関数
MaterialApp createMaterialAppWithHome({required Widget homeWidget}) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'NotoSansJP',
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
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
