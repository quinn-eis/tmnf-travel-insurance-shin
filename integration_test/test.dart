import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:integration_test/integration_test.dart';
import 'package:t_m_n_f_travel_insurance_shin/flutter_flow/flutter_flow_drop_down.dart';
import 'package:t_m_n_f_travel_insurance_shin/flutter_flow/flutter_flow_icon_button.dart';
import 'package:t_m_n_f_travel_insurance_shin/flutter_flow/flutter_flow_radio_button.dart';
import 'package:t_m_n_f_travel_insurance_shin/flutter_flow/flutter_flow_widgets.dart';
import 'package:t_m_n_f_travel_insurance_shin/flutter_flow/flutter_flow_theme.dart';
import 'package:t_m_n_f_travel_insurance_shin/index.dart';
import 'package:t_m_n_f_travel_insurance_shin/main.dart';
import 'package:t_m_n_f_travel_insurance_shin/flutter_flow/flutter_flow_util.dart';

import 'package:provider/provider.dart';

void main() async {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {});

  setUp(() async {
    FFAppState.reset();
    final appState = FFAppState();
    await appState.initializePersistedState();
  });

  testWidgets('Success-FastestPath', (WidgetTester tester) async {
    _overrideOnError();

    await tester.pumpWidget(ChangeNotifierProvider(
      create: (context) => FFAppState(),
      child: const MyApp(),
    ));
    await GoogleFonts.pendingFonts();

    await tester.tap(find.byKey(const ValueKey('UNDEFINED')));
    await tester.pumpAndSettle(
      const Duration(milliseconds: 100),
      EnginePhase.sendSemanticsUpdate,
      const Duration(milliseconds: 500),
    );
    await tester.tap(find.byKey(const ValueKey('UNDEFINED')));
    await tester.pumpAndSettle();
    expect(find.byKey(const ValueKey('UNDEFINED')), findsOneWidget);
    await tester.enterText(
        find.byKey(const ValueKey('UNDEFINED')), 'PolFirstName');
    await tester.enterText(
        find.byKey(const ValueKey('UNDEFINED')), 'PolLastName');
    await tester.enterText(
        find.byKey(const ValueKey('UNDEFINED')), '15-1-4885980-11');
  });
}

// There are certain types of errors that can happen during tests but
// should not break the test.
void _overrideOnError() {
  final originalOnError = FlutterError.onError!;
  FlutterError.onError = (errorDetails) {
    if (_shouldIgnoreError(errorDetails.toString())) {
      return;
    }
    originalOnError(errorDetails);
  };
}

bool _shouldIgnoreError(String error) {
  // It can fail to decode some SVGs - this should not break the test.
  if (error.contains('ImageCodecException')) {
    return true;
  }
  // Overflows happen all over the place,
  // but they should not break tests.
  if (error.contains('overflowed by')) {
    return true;
  }
  // Sometimes some images fail to load, it generally does not break the test.
  if (error.contains('No host specified in URI') ||
      error.contains('EXCEPTION CAUGHT BY IMAGE RESOURCE SERVICE')) {
    return true;
  }
  // These errors should be avoided, but they should not break the test.
  if (error.contains('setState() called after dispose()')) {
    return true;
  }

  return false;
}
