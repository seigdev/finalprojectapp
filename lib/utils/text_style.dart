import 'package:flutter/material.dart';

// you always have to add the google font package to your pubspec.yaml file.

TextStyle boldtextStyle([double? fontSize, Color? color]) => TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w700,
    );

TextStyle semiboldtextStyle([double? fontSize, Color? color]) => TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w600,
    );

TextStyle mediumtextStyle([double? fontSize, Color? color]) => TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w500,
    );

TextStyle regulartextStyle([double? fontSize, Color? color]) => TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w400,
    );

TextStyle thintextStyle([double? fontSize, Color? color]) => TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: FontWeight.w300,
    );
