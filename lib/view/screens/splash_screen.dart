import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:page_transition/page_transition.dart';

import 'package:codeland/common/colors.dart';
import 'package:codeland/view/screens/login_screen.dart';
import '../../common/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
          context,
          PageTransition(
            child: const LoginScreen(),
            type: PageTransitionType.fade,
            duration: const Duration(milliseconds: 500),
          ),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.orange,
      child: const Center(
        child: Image(
          image: AssetImage(
            AppAssets.logo,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
