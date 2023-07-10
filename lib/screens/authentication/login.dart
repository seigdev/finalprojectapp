// ignore_for_file: avoid_print

import 'package:finalprojectapp/screens/authentication/registration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconsax/iconsax.dart';

import '../../services/data_provider.dart';
import '../../services/state_provider.dart';
import '../../utils/button.dart';
import '../../utils/colors.dart';
import '../../utils/constants.dart';
import '../../utils/input_fields.dart';
import '../../utils/navigation.dart';
import '../../utils/text_style.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  // form key
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  String email = '';
  String password = '';

  //
  void _clear() {
    emailcontroller.clear();
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
                  heightFifty,
                  closeIconButton(context),
                  heightTwenty,
                  Center(
                    child: Text(
                      'Welcome Back!',
                      style: boldtextStyle(20, primaryColor),
                    ),
                  ),
                  heightTen,
                  Center(
                    child: Text(
                      'Sign in by entering the information below',
                      style: mediumtextStyle(14),
                    ),
                  ),
                  heightThirty,
                  formLabel(context, text: 'Email'),
                  heightTen,
                  textInput(
                    context,
                    emailcontroller,
                    validateText: 'email required',
                    inputType: TextInputType.emailAddress,
                    onChanged: (p0) => email = p0,
                    hintText: 'email@example.com',
                  ),
                  heightTwenty,
                  formLabel(context, text: 'Password'),
                  heightTen,
                  textInput(
                    context,
                    passwordcontroller,
                    inputType: TextInputType.visiblePassword,
                    obscureText: _passwordObscured ? true : false,
                    validateText: 'password required',
                    icon: GestureDetector(
                        onTap: () => setState(() {
                              _passwordObscured = !_passwordObscured;
                            }),
                        child: Icon(
                          _passwordObscured ? Iconsax.eye : Iconsax.eye_slash,
                        )),
                    onChanged: (p0) => password = p0,
                    hintText: '******',
                  ),
                  heightTen,
                  forgotPassword(context),
                  heightFifty,
                  heightTen,
                  submissionButton(
                    context,
                    loading: loading,
                    title: 'Sign In',
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        ref.read(isLoadingProvider.notifier).state = true;
                        FocusScope.of(context).unfocus();
                        print(email + password);
                        ref.read(loginProvider(context, email, password));
                        _clear();
                      } else {
                        ref.read(isLoadingProvider.notifier).state = false;
                      }
                    },
                  ),
                  heightTwenty,
                  textLink(
                    context,
                    description: "You don't own an account?",
                    title: ' Sign Up',
                    onTap: () => pushTo(context, const RegistrationScreen()),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
