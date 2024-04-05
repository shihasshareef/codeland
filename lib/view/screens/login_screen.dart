import 'dart:ui';
import 'package:codeland/common/colors.dart';
import 'package:codeland/view/screens/dashboard_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';

import '../../common/assets.dart';
import '../../common/primary_button.dart';
import '../../common/routes.dart';
import '../../common/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController userNameController;
  late FocusNode userNameFocus;
  late TextEditingController passwordController;
  late FocusNode passwordFocus;
  bool userNameValid = false;
  bool userNameChanged = false;
  bool passwordValid = false;
  bool passwordChanged = false;
  int selectedIndex = 0;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    userNameFocus = FocusNode();
    passwordController = TextEditingController();
    passwordFocus = FocusNode();
  }

  @override
  void dispose() {
    userNameController.dispose();
    userNameFocus.dispose();
    passwordController.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                child: Image(
                  image: AssetImage(
                    AppAssets.logoWithText,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 56.0,
                width: 328.0,
                color: AppColors.white,
                child: TextFormField(
                  focusNode: userNameFocus,
                  style: appTextTheme()
                      .titleMedium!
                      .copyWith(color: AppColors.black),
                  keyboardType: TextInputType.name,
                  controller: userNameController,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Username',
                    labelStyle: appTextTheme()
                        .labelMedium!
                        .copyWith(color: AppColors.label),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    setState(() {
                      userNameChanged = true;
                    });
                    if (value.isEmpty) {
                      setState(() {
                        userNameValid = false;
                      });
                    } else {
                      setState(() {
                        userNameValid = true;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(height: 16),
              Container(
                height: 56.0,
                width: 328.0,
                color: AppColors.white,
                child: TextFormField(
                  focusNode: passwordFocus,
                  style: appTextTheme()
                      .titleMedium!
                      .copyWith(color: AppColors.black),
                  keyboardType: TextInputType.name,
                  controller: passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    isDense: true,
                    labelText: 'Password',
                    labelStyle: appTextTheme()
                        .labelMedium!
                        .copyWith(color: AppColors.label),
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.border),
                      borderRadius: BorderRadius.all(
                        Radius.circular(5.0),
                      ),
                    ),
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  onChanged: (value) {
                    setState(() {
                      passwordChanged = true;
                    });
                    if (value.isEmpty) {
                      setState(() {
                        passwordValid = false;
                      });
                    } else {
                      setState(() {
                        passwordValid = true;
                      });
                    }
                  },
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              PrimaryButton(
                  height: 56,
                  width: 328,
                  color: AppColors.orange,
                  disabled: !(userNameValid && passwordValid),
                  isLoading: isLoading,
                  onPressed: () async {
                    if (!isLoading) {
                      setState(() {
                        isLoading = true;
                      });
                      Navigator.of(context).push(PageTransition(
                        child: const DashBoardScreen(),
                        type: PageTransitionType.fade,
                        duration: const Duration(milliseconds: 500),
                      ));
                      setState(() {
                        isLoading = false;
                      });
                    }
                  },
                  text: 'Login',
                  borderRadius: 12),
              const SizedBox(
                height: 48,
              ),
              Text(
                'For Assistance & Login Details Contact:',
                style:
                    appTextTheme().bodySmall?.copyWith(color: AppColors.black),
              ),
              const SizedBox(
                height: 8.0,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'English, Kannada & Telugu :  ',
                      style: appTextTheme().bodySmall,
                    ),
                    TextSpan(
                      text: '7406333800',
                      style: appTextTheme().bodySmall!.copyWith(
                            color: AppColors.orange,
                            decoration: TextDecoration.underline,
                          ),
                      recognizer: TapGestureRecognizer()..onTap = () async {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'English, Kannada & Hindi    :  ',
                      style: appTextTheme().bodySmall,
                    ),
                    TextSpan(
                      text: '9071386515',
                      style: appTextTheme().bodySmall!.copyWith(
                            color: AppColors.orange,
                            decoration: TextDecoration.underline,
                          ),
                      recognizer: TapGestureRecognizer()..onTap = () async {},
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 72,
              ),
              Center(
                child: Text(
                  'v1.7 © 2023, Codeland Infosolutions Pvt Ltd',
                  style: appTextTheme()
                      .bodySmall
                      ?.copyWith(color: AppColors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
