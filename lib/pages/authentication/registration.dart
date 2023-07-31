// ignore_for_file: avoid_print

import 'package:finalprojectapp/pages/authentication/login.dart';
import 'package:finalprojectapp/services/preferences.dart';
import 'package:finalprojectapp/utils/button.dart';
import 'package:finalprojectapp/utils/colors.dart';
import 'package:finalprojectapp/utils/constants.dart';
import 'package:finalprojectapp/utils/input_fields.dart';
import 'package:finalprojectapp/utils/navigation.dart';
import 'package:finalprojectapp/utils/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../services/data_provider.dart';
import '../../services/state_provider.dart';

class RegistrationScreen extends ConsumerStatefulWidget {
  const RegistrationScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RegistrationScreenState();
}

class _RegistrationScreenState extends ConsumerState<RegistrationScreen> {
  final TextEditingController fullnamecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController phonecontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final TextEditingController addresscontroller = TextEditingController();

// form key
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String email = '';
  String phone = '';
  String password = '';
  String address = '';
  String type = '';

  //
  void _clear() {
    fullnamecontroller.clear();
    emailcontroller.clear();
    phonecontroller.clear();
    addresscontroller.clear();
    passwordcontroller.clear();
  }

  bool loading = false;
  bool _passwordObscured = true;

  @override
  Widget build(BuildContext context) {
    loading = ref.watch(isLoadingProvider);
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  heightThirty,
                  closeIconButton(context),
                  heightTwenty,
                  Center(
                    child: Text(
                      'Create Account',
                      style: semiboldtextStyle(20, colorBlack),
                    ),
                  ),
                  heightThirty,
                  formLabel(context, text: 'Full Name'),
                  heightTen,
                  textInput(
                    context,
                    fullnamecontroller,
                    inputType: TextInputType.name,
                    validateText: 'email required',
                    onChanged: (value) => name = value,
                    hintText: 'Full Name',
                  ),
                  heightTwenty,
                  formLabel(context, text: 'Email'),
                  heightTen,
                  textInput(
                    context,
                    emailcontroller,
                    onChanged: (value) => email = value,
                    validateText: 'email required',
                    inputType: TextInputType.emailAddress,
                    hintText: 'Email',
                  ),
                  heightTwenty,
                  formLabel(context, text: 'Phone Number'),
                  heightTen,
                  textInput(
                    context,
                    phonecontroller,
                    inputType: TextInputType.phone,
                    validateText: 'email required',
                    onChanged: (value) => phone = value,
                    hintText: 'Phone Number',
                  ),
                  formLabel(context, text: 'Address'),
                  heightTen,
                  textInput(
                    context,
                    addresscontroller,
                    validateText: 'email required',
                    onChanged: (value) => address = value,
                    inputType: TextInputType.text,
                    hintText: 'Address',
                  ),
                  heightTwenty,
                  formLabel(context, text: 'Password'),
                  heightTen,
                  textInput(
                    context,
                    passwordcontroller,
                    inputType: TextInputType.visiblePassword,
                    validateText: 'email required',
                    obscureText: _passwordObscured ? true : false,
                    icon: GestureDetector(
                        onTap: () => setState(() {
                              _passwordObscured = !_passwordObscured;
                            }),
                        child: Icon(
                          _passwordObscured ? Iconsax.eye : Iconsax.eye_slash,
                        )),
                    onChanged: (value) => password = value,
                    hintText: '******',
                  ),
                  heightTwenty,
                  formLabel(context, text: 'I am a'),
                  Row(
                    children: [
                      radiobutton(
                        value: 'Doctor',
                        title: 'Doctor',
                        groupValue: type,
                        onChanged: (value) {
                          setState(() {
                            type = value;
                          });
                        },
                      ),
                      radiobutton(
                        value: 'Patient',
                        title: 'Patient',
                        groupValue: type,
                        onChanged: (value) {
                          setState(() {
                            type = value;
                          });
                        },
                      ),
                    ],
                  ),
                  heightFifty,
                  submissionButton(
                    context,
                    loading: loading,
                    title: 'Sign Up',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        ref.read(isLoadingProvider.notifier).state = true;
                        FocusScope.of(context).unfocus();
                        UserPreferences.setUserType(type);
                        ref.read(registerProvider(context, name, email, phone,
                            type.toLowerCase(), address, password));
                        _clear();
                      } else {
                        ref.read(isLoadingProvider.notifier).state = false;
                      }
                    },
                  ),
                  heightTwenty,
                  textLink(
                    context,
                    description: 'You own an account?',
                    title: ' Sign In',
                    onTap: () => pushTo(context, const LoginScreen()),
                  ),
                  heightFifty,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
