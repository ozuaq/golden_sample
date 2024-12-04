import 'package:flutter/material.dart';

import 'test_widgets/test_home_page.dart';

class RouteGenerator {
  static const String targetPageRouteName = '/target';

  final Widget targetPage;

  const RouteGenerator({required this.targetPage});

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case TestHomePage.routeName:
        return MaterialPageRoute(builder: (_) => const TestHomePage());
      case targetPageRouteName:
        return MaterialPageRoute(builder: (_) => targetPage);
      default:
        // 未定義のルートの場合はエラー画面へ
        return MaterialPageRoute(builder: (_) => const ErrorPage());
    }
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('エラー')),
      body: const Center(child: Text('ページが見つかりません')),
    );
  }
}
