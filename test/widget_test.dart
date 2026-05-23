import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:complete_taxi_app/main.dart';

void main() {
  testWidgets('App should render without errors', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const CompleteTaxiApp());

    // Verify the app renders
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
