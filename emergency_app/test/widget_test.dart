import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:emergency_app/login_page.dart';

void main() {
  testWidgets('Login Page Test', (WidgetTester tester) async {
    // Build the LoginPage widget and trigger a frame.
    await tester.pumpWidget(MaterialApp(home: LoginPage()));

    // Verify that the login page displays the correct initial state.
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Don\'t have an account? Register here'), findsOneWidget);

    // Enter text into the email and password fields.
    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).last, 'password');

    // Verify the text has been entered.
    expect(find.text('test@example.com'), findsOneWidget);
    expect(find.text('password'), findsOneWidget);

    // Tap the login button and trigger a frame.
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Optionally, verify the next steps after login button is tapped,
    // such as navigation to a different page or showing error messages.
  });
}
