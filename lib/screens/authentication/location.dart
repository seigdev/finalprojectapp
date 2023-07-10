import 'package:finalprojectapp/authstate.dart';
import 'package:finalprojectapp/utils/button.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:finalprojectapp/utils/navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LocationScreen extends ConsumerStatefulWidget {
  const LocationScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LocationScreenState();
}

class _LocationScreenState extends ConsumerState<LocationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          formLabel(context, text: 'Select your location'),
          heightTwenty,
          const CupertinoSearchTextField(),
          heightFifty,
          heightFifty,
          submissionButton(context,
              onTap: () => pushTo(context, const AuthState())),
        ],
      ),
    );
  }
}
