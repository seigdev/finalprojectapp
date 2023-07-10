import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'colors.dart';

Widget textInput(
  BuildContext context,
  TextEditingController controller, {
  int? maxLength,
  int? maxLine,
  double? width,
  double? height,
  double? borderRadiusValue,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? labelText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  Widget? icon,
  bool? obscureText,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  TextInputType? inputType,
  List<TextInputFormatter>? inputFormatter,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    SizedBox(
      child: TextFormField(
        maxLength: maxLength,
        maxLines: maxLine ?? 1,
        textInputAction: inputAction,
        inputFormatters: inputFormatter,
        controller: controller,
        obscureText: obscureText ?? false,
        validator: (value) => value!.isEmpty ? validateText : null,
        autofocus: false,
        style: textStyle ?? mediumtextStyle(14),
        textAlign: textAlign ?? TextAlign.start,
        keyboardType: inputType,
        cursorColor: primaryColor,
        decoration: InputDecoration(
          filled: true,
          fillColor: colorGreyLight.withOpacity(0.5),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: borderColor ?? primaryColor,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: errorColor,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: errorColor,
            ),
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(
              borderRadiusValue ?? 12,
            ),
          ),
          hintText: hintText ?? "Your Text",
          hintStyle: hintStyle ?? mediumtextStyle(14, colorGrey),
          errorText: errorText,
          prefixText: defaultText,
          prefixStyle: prefixStyle,
          helperText: helperText,
          suffixIcon: icon,
          suffixStyle: suffixStyle,
          suffixText: suffixText,
        ),
        onChanged: onChanged,
      ),
    );

Widget pinInput(
  BuildContext context,
  TextEditingController controller, {
  int? maxLength,
  double? borderRadiusValue,
  bool? obscureText,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? suffixStyle,
  TextStyle? prefixStyle,
  TextAlign? textAlign,
  String? hintText,
  String? labelText,
  String? errorText,
  String? defaultText,
  String? helperText,
  String? suffixText,
  Widget? icon,
  Color? fillColor,
  Color? borderColor,
  TextInputAction? inputAction,
  List<TextInputFormatter>? inputFormatter,
  String? validateText,
  void Function(String)? onChanged,
}) =>
    Center(
      child: Container(
        width: 50,
        height: 60,
        decoration: BoxDecoration(
            border: Border.all(color: colorGrey.withOpacity(0.5)),
            borderRadius: BorderRadius.circular(12)),
        child: TextField(
          maxLength: 1,
          textInputAction: inputAction,
          inputFormatters: inputFormatter,
          controller: controller,
          // validator: (value) => value!.isEmpty ? validateText : null,
          keyboardType: TextInputType.none,
          cursorHeight: 18,
          cursorWidth: 1.5,
          showCursor: false,
          autofocus: false,
          obscureText: true,
          style: textStyle ?? mediumtextStyle(18),
          textAlign: textAlign ?? TextAlign.center,
          cursorColor: primaryColor,
          decoration: InputDecoration(
            filled: false,
            counterText: '',
            fillColor: fillColor ?? fillTextColor,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                borderRadiusValue ?? 12,
              ),
            ),
            hintText: hintText ?? "",
            hintStyle: hintStyle ?? boldtextStyle(20, colorGrey),
            errorText: errorText,
            prefixText: defaultText,
            prefixStyle: prefixStyle,
            helperText: helperText,
            suffixIcon: icon,
            suffixStyle: suffixStyle,
            suffixText: suffixText,
          ),
          onChanged: onChanged,
        ),
      ),
    );
