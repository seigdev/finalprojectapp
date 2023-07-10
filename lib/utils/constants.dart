import 'package:finalprojectapp/utils/button.dart';
import 'package:finalprojectapp/utils/navigation.dart';
import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/dropdown/gf_dropdown.dart';
import 'package:iconsax/iconsax.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'colors.dart';

String constantimage =
    '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';

SizedBox heightTen = const SizedBox(height: 10);

SizedBox heightTwenty = const SizedBox(height: 20);

SizedBox heightThirty = const SizedBox(height: 30);

SizedBox heightForty = const SizedBox(height: 40);

SizedBox heightFifty = const SizedBox(height: 50);

SizedBox widthFive = const SizedBox(width: 5);

SizedBox widthTen = const SizedBox(width: 10);

SizedBox widthfifteen = const SizedBox(width: 15);

formLabel(BuildContext context, {String? text, double? size}) {
  return Text(
    text ?? 'Form Label',
    style: semiboldtextStyle(size ?? 14),
  );
}

forgotPassword(
  BuildContext context, {
  bool? value,
  void Function(bool?)? onChanged,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      textLink(context, title: 'Forgot Password?'),
    ],
  );
}

Widget homeheader(
  BuildContext context, {
  String? text,
}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Row(
        children: [
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          widthTen,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Good Morning',
                style: regulartextStyle(14, colorGrey),
              ),
              Text(
                text ?? 'Lorem Ipsum',
                style: semiboldtextStyle(16),
              ),
            ],
          ),
        ],
      ),
      // Row(
      //   children: [
      //     const Icon(
      //       Iconsax.notification,
      //     ),
      //     widthTen,
      //     const Icon(
      //       Iconsax.search_normal,
      //     ),
      //   ],
      // ),
    ],
  );
}

Widget componentheader(
  BuildContext context, {
  String? maintitle,
}) =>
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(maintitle ?? 'lorem ipsum', style: semiboldtextStyle()),
        textLink(
          context,
          title: 'see all',
          onTap: () => pushNamed(context, 'page'),
        )
      ],
    );

Widget radiobutton({
  String? title,
  dynamic value,
  dynamic groupValue,
  void Function(dynamic)? onChanged,
}) {
  return SizedBox(
    width: 150,
    child: RadioListTile(
      title: Text(title ?? 'title'),
      value: value,
      groupValue: groupValue,
      activeColor: primaryColor,
      onChanged: onChanged,
      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
    ),
  );
}

myDropDown({Object? value, void Function(Object?)? onChanged}) {
  SizedBox(
    height: 48,
    child: DropdownButtonHideUnderline(
      child: GFDropdown(
        borderRadius: BorderRadius.circular(5),
        dropdownButtonColor: colorGreyLight.withOpacity(0.5),
        value: value,
        onChanged: onChanged,
        items: [
          '10+',
          '20+',
          '30+',
          '40+',
          '50+',
        ]
            .map((value) => DropdownMenuItem(
                  value: value,
                  child: Text(value),
                ))
            .toList(),
      ),
    ),
  );
}

textLink(BuildContext context,
    {String? description, String? title, void Function()? onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(
        description ?? '',
        style: mediumtextStyle(14),
      ),
      InkWell(
        onTap: onTap,
        child: Text(
          title ?? '',
          style: semiboldtextStyle(14, primaryColor),
        ),
      ),
    ],
  );
}

pageViewElement(
  BuildContext context, {
  PageController? controller,
  void Function()? skipOnTap,
  void Function()? nextOnTap,
  bool? thirdPage,
}) {
  return Center(
    child: Column(
      children: [
        SmoothPageIndicator(
          controller: controller ?? PageController(),
          count: 3,
          effect: const ScrollingDotsEffect(
            dotHeight: 8,
            dotWidth: 8,
            dotColor: Color(0xffC4C4C4),
            activeDotColor: primaryColor,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
          child: thirdPage ?? false
              ? submissionButton(
                  context,
                  title: 'Get Started',
                  color: colorWhite,
                  bgColor: primaryColor,
                  onTap: nextOnTap,
                  width: 300,
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    submissionButton(
                      context,
                      title: 'Skip',
                      color: colorBlack,
                      bgColor: colorWhite,
                      onTap: skipOnTap,
                      width: 100,
                    ),
                    submissionButton(
                      context,
                      title: 'Next',
                      color: colorWhite,
                      onTap: nextOnTap,
                      bgColor: primaryColor,
                      width: 150,
                    ),
                  ],
                ),
        )
      ],
    ),
  );
}

displayErrorMotionToast(
  BuildContext context,
  String description,
) {
  MotionToast(
    description: Center(
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: mediumtextStyle(14, colorWhite),
      ),
    ),
    primaryColor: errorColor,
    iconSize: 28,
    displaySideBar: false,
    enableAnimation: false,
    animationType: AnimationType.fromLeft,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    width: 250,
    height: 45,
    dismissable: false,
  ).show(context);
}

displaySuccessMotionToast(BuildContext context, String description,
    {Function? onClose}) {
  MotionToast(
    description: Center(
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: mediumtextStyle(14, colorWhite),
      ),
    ),
    primaryColor: successColor,
    iconSize: 28,
    displaySideBar: false,
    enableAnimation: false,
    animationType: AnimationType.fromLeft,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    width: 250,
    height: 45,
    dismissable: false,
    onClose: onClose,
  ).show(context);
}

displayWarningMotionToast(
  BuildContext context,
  String description,
) {
  MotionToast(
    description: Center(
      child: Text(
        description,
        textAlign: TextAlign.center,
        style: semiboldtextStyle(14),
      ),
    ),
    primaryColor: const Color(0xFFDADADA),
    iconSize: 28,
    displaySideBar: false,
    enableAnimation: false,
    animationType: AnimationType.fromLeft,
    position: MotionToastPosition.top,
    backgroundType: BackgroundType.solid,
    animationCurve: Curves.easeOutExpo,
    width: 250,
    height: 45,
    dismissable: false,
  ).show(context);
}

BoxDecoration numberPadContainer([Color? color]) => BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      color: color ?? colorGrey.withOpacity(0.2),
    );

// block to show modal bottom sheets
Future showModal(BuildContext context, Widget child, [double? height]) =>
    showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: true,
      context: context,
      builder: (context) => buildModal(
        context,
        child,
        height: height,
      ),
    );

// block to build modal bottom sheet
Widget buildModal(BuildContext context, Widget child, {double? height}) =>
    Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(40)),
          color: scaffoldColor,
        ),
        child: SingleChildScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: modalgestureicon(context, top: 10)),
              heightTen,
              child,
            ],
          ),
        ),
      ),
    );

Widget loadingWidget([Color? color]) => Center(
      child: SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: color ?? Colors.white,
        ),
      ),
    );

Widget modalgestureicon(BuildContext context,
        {double? top, double? bottom, double? left}) =>
    Padding(
      padding: EdgeInsets.only(top: top ?? 0),
      child: Container(
        width: 40,
        height: 4,
        decoration: const BoxDecoration(
            color: colorGrey,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
    );

Widget settingItems(
  BuildContext context, {
  String? data,
  void Function()? onTap,
}) =>
    Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
      child: InkWell(
        onTap: onTap,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              data ?? 'Lorem Ipsum',
              style: mediumtextStyle(16),
            ),
            const Icon(
              CupertinoIcons.right_chevron,
              size: 20,
            ),
          ],
        ),
      ),
    );

Expanded isEmptyVisitors = Expanded(
  child: ListView(
    children: [
      Center(
        child: Text(
          "You don't have any visitor at the moment.",
          style: regulartextStyle(14, colorGrey),
        ),
      ),
    ],
  ),
);
