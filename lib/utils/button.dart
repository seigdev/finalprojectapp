import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/cupertino.dart';

import 'colors.dart';
import 'constants.dart';
import 'navigation.dart';

// submission button.
Widget submissionButton(
  BuildContext context, {
  double? height,
  double? width,
  double? radius,
  String? title,
  Color? bgColor,
  bool? loading,
  Color? color,
  void Function()? onTap,
}) =>
    GestureDetector(
      onTap: onTap,
      child: Center(
        child: Container(
          height: height ?? 50,
          width: width ?? 300,
          decoration: BoxDecoration(
            color: bgColor ?? primaryColor,
            borderRadius: BorderRadius.circular(radius ?? 12),
          ),
          child: Center(
              child: loading ?? false
                  ? loadingWidget()
                  : Text(
                      title ?? 'Submit',
                      style: semiboldtextStyle(
                        14,
                        color ?? colorWhite,
                      ),
                    )),
        ),
      ),
    );

// close button with icon.
Widget closeIconButton(BuildContext context,
        {IconData? icon, double? pTop, double? left}) =>
    Padding(
      padding: EdgeInsets.only(top: pTop ?? 0, left: left ?? 0),
      child: GestureDetector(
        onTap: () => pop(context),
        child: SizedBox(
          height: 45,
          width: 45,
          child: Icon(icon ?? CupertinoIcons.arrow_left),
        ),
      ),
    );
