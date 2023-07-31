// ignore_for_file: prefer_interpolation_to_compose_strings, avoid_print

import 'package:finalprojectapp/pages/wrapper/doctor_home.dart';
import 'package:finalprojectapp/pages/wrapper/messages.dart';
import 'package:finalprojectapp/pages/wrapper/patient_home.dart';
import 'package:finalprojectapp/pages/wrapper/settings.dart';
import 'package:finalprojectapp/utils/colors.dart';
import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PatientWrapper extends StatefulWidget {
  const PatientWrapper({super.key});

  @override
  State<PatientWrapper> createState() => _PatientWrapperState();
}

class _PatientWrapperState extends State<PatientWrapper> {
  int _currentIndex = 0;
  static const List<Widget> _screens = [
    PatientHome(),
    MessageScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 5,
        backgroundColor: scaffoldColor,
      ),
      backgroundColor: scaffoldColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavBarItem(Iconsax.home, 0, 'Home'),
              buildNavBarItem(Iconsax.message, 1, 'Appointments'),
              buildNavBarItem(Iconsax.setting_2, 2, 'Settings'),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: SizedBox(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon,
                  color: index == _currentIndex
                      ? primaryColor
                      : const Color(0xff000000)),
              Text(
                label,
                style: mediumtextStyle(
                    12,
                    index == _currentIndex
                        ? primaryColor
                        : const Color(0xff000000)),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DoctorWrapper extends StatefulWidget {
  const DoctorWrapper({super.key});

  @override
  State<DoctorWrapper> createState() => _DoctorWrapperState();
}

class _DoctorWrapperState extends State<DoctorWrapper> {
  int _currentIndex = 0;
  static const List<Widget> _screens = [
    DoctorHome(),
    MessageScreen(),
    SettingScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 5,
        backgroundColor: scaffoldColor,
      ),
      backgroundColor: scaffoldColor,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: SizedBox(
          height: 80,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildNavBarItem(Iconsax.home, 0, 'Home'),
              buildNavBarItem(Iconsax.message, 1, 'Appointments'),
              buildNavBarItem(Iconsax.setting_2, 2, 'Settings'),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
    );
  }

  GestureDetector buildNavBarItem(IconData icon, int index, String label) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: SizedBox(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(icon,
                  color: index == _currentIndex
                      ? primaryColor
                      : const Color(0xff000000)),
              Text(
                label,
                style: mediumtextStyle(
                    12,
                    index == _currentIndex
                        ? primaryColor
                        : const Color(0xff000000)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
