// ignore_for_file: avoid_print

import 'package:finalprojectapp/services/preferences.dart';
import 'package:finalprojectapp/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'screens/authentication/login.dart';

class AuthState extends ConsumerStatefulWidget {
  const AuthState({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthStateState();
}

class _AuthStateState extends ConsumerState<AuthState> {
  @override
  Widget build(BuildContext context) {
    var newuser = (UserPreferences.getLoginData());
    var userType = UserPreferences.getUserType();
    print(newuser);
    if (newuser == false) {
      if (userType == 'doctor') {
        return const DoctorWrapper();
      } else if (userType == 'patient') {
        return const PatientWrapper();
      }
    } else {
      return const LoginScreen();
    }
    return const LoginScreen();
  }
}
