import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:student_card_app/main.dart';

void main() {
  testWidgets('card shows every required field', (tester) async {
    await tester.pumpWidget(const StudentCardApp());

    for (final value in student.values) {
      expect(find.text(value), findsOneWidget);
    }
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
