import 'package:finalprojectapp/pages/core/authstate.dart';
import 'package:finalprojectapp/services/preferences.dart';
import 'package:finalprojectapp/utils/colors.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:finalprojectapp/utils/navigation.dart';
import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingScreen extends ConsumerStatefulWidget {
  const SettingScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        formLabel(context, text: 'Settings', size: 18),
        heightThirty,
        settingItems(context, data: 'Security'),
        settingItems(context, data: 'Account Information'),
        settingItems(context, data: 'Change Password'),
        heightTwenty,
        const Divider(),
        heightThirty,
        settingItems(context, data: 'Message Us'),
        settingItems(context, data: 'Give us feedback'),
        settingItems(context, data: 'Notifications'),
        settingItems(context, data: 'Join Community'),
        settingItems(context, data: 'FAQs'),
        heightTwenty,
        const Divider(),
        heightTwenty,
        InkWell(
          onTap: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                CupertinoIcons.power,
                color: errorColor,
              ),
              widthFive,
              InkWell(
                onTap: () {
                  UserPreferences.setLoginData(true);
                  Future.delayed(const Duration(seconds: 2), () {
                    pushTo(context, const AuthState());
                  });
                },
                child: Text(
                  'Log Out',
                  style: regulartextStyle(18, errorColor),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
