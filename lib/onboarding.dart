import 'package:finalprojectapp/screens/authentication/registration.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:finalprojectapp/utils/navigation.dart';
import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Image.asset('assets/images/Group 125.png'),
                  const SizedBox(height: 80),
                  // add text and image here.
                  Text(
                    'Doctors & Experts of your choice \n  are ready to help  your health',
                    style: boldtextStyle(18),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 65),
                  pageViewElement(
                    context,
                    controller: controller,
                    skipOnTap: () =>
                        pushTo(context, const RegistrationScreen()),
                    nextOnTap: () => controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Image.asset('assets/images/Group 126.png'),
                  const SizedBox(height: 80),
                  // add text and image here.
                  Text(
                    'Let’s give you an easy \n and healthy life',
                    style: boldtextStyle(18),
                    textAlign: TextAlign.center,
                  ),
                  // tell your designer to group the characters together
                  const SizedBox(height: 65),
                  pageViewElement(
                    context,
                    controller: controller,
                    skipOnTap: () =>
                        pushTo(context, const RegistrationScreen()),
                    nextOnTap: () => controller.nextPage(
                      duration: const Duration(milliseconds: 200),
                      curve: Curves.easeInOut,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: [
                  Image.asset('assets/images/Group 127.png'),
                  const SizedBox(height: 80),
                  // add text and image here.
                  Text('Welcome to TriMed', style: boldtextStyle(18)),
                  const SizedBox(height: 5),
                  Text(
                    'We care about your health and medical needs',
                    textAlign: TextAlign.center,
                    style: regulartextStyle(14),
                  ),
                  // tell your designer to group the characters together
                  const SizedBox(height: 50),
                  pageViewElement(
                    context,
                    controller: controller,
                    thirdPage: true,
                    nextOnTap: () =>
                        pushTo(context, const RegistrationScreen()),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
