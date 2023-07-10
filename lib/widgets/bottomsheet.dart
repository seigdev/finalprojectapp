import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../utils/colors.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    super.key,
    required this.controller,
    required this.skipOnTap,
    required this.nextOnTap,
  });

  final PageController controller;
  final GestureTapCallback skipOnTap;
  final GestureTapCallback nextOnTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ScrollingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Color(0xffC4C4C4),
              activeDotColor:
                  primaryColor, // change color in lib/utils/colors.dart
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: skipOnTap,
                  child: Text(
                    'Skip',
                    style: regulartextStyle(16),
                  ),
                ),
                InkWell(
                  onTap: nextOnTap,
                  child: Container(
                    height: 50,
                    width: 135,
                    decoration: BoxDecoration(
                      color:
                          primaryColor, // change color in lib/utils/colors.dart
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: mediumtextStyle(16, colorWhite),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({
    super.key,
    required this.controller,
    required this.skipOnTap,
    required this.nextOnTap,
  });

  final PageController controller;
  final GestureTapCallback skipOnTap;
  final GestureTapCallback nextOnTap;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ScrollingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Color(0xffC4C4C4),
              activeDotColor:
                  primaryColor, // change color in lib/utils/colors.dart
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 45),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: skipOnTap,
                  child: Text(
                    'Skip',
                    style: regulartextStyle(16),
                  ),
                ),
                InkWell(
                  onTap: nextOnTap,
                  child: Container(
                    height: 50,
                    width: 135,
                    decoration: BoxDecoration(
                      color:
                          primaryColor, // change color in lib/utils/colors.dart
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: mediumtextStyle(16, colorWhite),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  const PageThree({
    super.key,
    required this.controller,
    required this.onTap,
  });

  final PageController controller;
  final GestureTapCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SmoothPageIndicator(
            controller: controller,
            count: 3,
            effect: const ScrollingDotsEffect(
              dotHeight: 8,
              dotWidth: 8,
              dotColor: Color(0xffC4C4C4),
              activeDotColor: primaryColor,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40, top: 40),
            child: InkWell(
              onTap: onTap,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            'No, I am not a doctor.',
            style: mediumtextStyle(14),
          )
        ],
      ),
    );
  }
}
