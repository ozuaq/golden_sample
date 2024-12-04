import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:golden_test_sample/app/my_app.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../test_helpers/alchemist/device.dart';
import '../../test_helpers/alchemist/golden_test_device_scenario.dart';
import '../../test_helpers/test_app_builder_widget.dart';

void main() {
  goldenTest(
    'golden test',
    fileName: 'my_app_1',
    builder: () => GoldenTestDeviceScenario(
      name: 'my_app_1',
      device: Device.smallPhone,
      builder: () => TestAppBuilder.createMaterialAppWithHome(
        homeWidget: const MyHomePage(title: 'my_app golden test'),
      ),
    ),
    whilePerforming: (WidgetTester tester) async {
      await tester.tap(find.byIcon(Icons.add));
      expect(find.byIcon(Icons.add), findsOneWidget);
      expect(find.text('my_app golden test'), findsOneWidget);
      await tester.pumpAndSettle();
      return null;
    },
  );
}
