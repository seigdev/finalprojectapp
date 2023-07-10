import 'package:finalprojectapp/onboarding.dart';
import 'package:finalprojectapp/screens/authentication/login.dart';
import 'package:finalprojectapp/services/preferences.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserPreferences.init();
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var userType = UserPreferences.getLoginData();
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: userType == false ? const LoginScreen() : const OnboardingScreen(),
    );
  }
}
