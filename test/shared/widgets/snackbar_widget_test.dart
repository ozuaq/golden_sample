import 'package:alchemist/alchemist.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test_sample/shared/widgets/snackbar_widget.dart';

import '../../test_helpers/alchemist/golden_test_device_scenario.dart';
import '../../test_helpers/test_app_builder_widget.dart';
import '../../test_helpers/test_widgets/test_home_page.dart';

void main() {
  goldenTest(
    'スナックバーを表示できる',
    fileName: 'show_snackbar',
    builder: () => GoldenTestDeviceScenario(
      name: 'show_snackbar',
      builder: () => TestAppBuilder.createMaterialAppWithHome(
        homeWidget: TestAppBuilder.createScaffoldWithBody(
            bodyWidget: const SnackbarWidget()),
      ),
    ),
    whilePerforming: (WidgetTester tester) async {
      await tester.tap(find.text('スナックバーを表示'));
      await tester.pumpAndSettle();
      expect(find.byType(SnackBar), findsOneWidget);
      return null;
    },
  );

  goldenTest(
    'ホームから移動して、スナックバーを表示できる',
    fileName: 'show_snackbar_from_home_page',
    builder: () => GoldenTestDeviceScenario(
      name: '',
      builder: () => TestAppBuilder.createMaterialAppWithHome(
        useRouteGenerator: true,
        homeWidget: TestAppBuilder.createScaffoldWithBody(
            bodyWidget: const SnackbarWidget()),
      ),
    ),
    whilePerforming: (WidgetTester tester) async {
      await tester.tap(find.text(TestHomePage.toTargetPageButtonLabel));
      await tester.pumpAndSettle();

      expect(find.byType(BackButton), findsOneWidget);
      await tester.tap(find.byType(BackButton));
      await tester.pumpAndSettle();
      return null;
    },
  );

  goldenTest(
    'ホーム画面を表示できる',
    fileName: 'home_page',
    builder: () => GoldenTestDeviceScenario(
      name: '',
      builder: () => TestAppBuilder.createMaterialAppWithHome(
        useRouteGenerator: true,
        homeWidget: TestAppBuilder.createScaffoldWithBody(
            bodyWidget: const SnackbarWidget()),
      ),
    ),
    whilePerforming: (WidgetTester tester) async {
      expect(find.byType(TestHomePage), findsOneWidget);
      return null;
    },
  );
}
