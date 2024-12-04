import 'package:flutter/material.dart';

import '../test_app_builder_widget.dart';

class TestHomePage extends StatelessWidget {
  static const String routeName = '/';
  static const String toTargetPageButtonLabel = 'テスト対象のページへ遷移';

  const TestHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('テスト用のホームページ'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed(TestAppBuilder.targetPageRouteName);
              },
              child: const Text(toTargetPageButtonLabel),
            ),
          ],
        ),
      ),
    );
  }
}
