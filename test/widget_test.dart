// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:finalprojectapp/pages/authentication/login.dart';
import 'package:finalprojectapp/utils/button.dart';
import 'package:finalprojectapp/utils/constants.dart';
// import 'package:finalprojectapp/utils/input_fields.dart';


void main() {
testWidgets('LoginPAge UI Test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
        const LoginScreen()); // Replace MyApp() with the widget that contains your HomePage

    // Verify that the AppBar has the correct title.
    expect(find.byWidget(formLabel(context)), findsOneWidget);

    // Verify that the body contains the welcome message.
   // expect(find.byWidget(textInput()), findsOneWidget);

    // Verify that the FloatingActionButton is present.
   expect(find.byWidget(submissionButton(context)), findsOneWidget);

    // You can add more specific tests based on your app's structure and widgets.
  });
}
