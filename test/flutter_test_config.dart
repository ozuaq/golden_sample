import 'dart:async';

import 'package:alchemist/alchemist.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  TestWidgetsFlutterBinding.ensureInitialized();

  return AlchemistConfig.runWithConfig(
    config: const AlchemistConfig(
      ciGoldensConfig: CiGoldensConfig(
        obscureText: false,
        renderShadows: true,
      ),
      platformGoldensConfig: PlatformGoldensConfig(
        enabled: false,
      ),
    ),
    run: testMain,
  );
}
