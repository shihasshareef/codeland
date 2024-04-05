import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class CircularProgressBar extends StatelessWidget {
  final bool isButtonLoader;
  final double strokeWidth;
  final Color bgColor;

  const CircularProgressBar({
    super.key,
    this.isButtonLoader = true,
    this.strokeWidth = 2.0,
    this.bgColor = AppColors.green,
  });
  @override
  Widget build(BuildContext context) {
    final Widget loader = CircularProgressIndicator(
      backgroundColor: bgColor,
      valueColor: const AlwaysStoppedAnimation<Color>(
        AppColors.white,
      ),
      strokeWidth: strokeWidth,
    );
    return isButtonLoader
        ? SizedBox(
            height: 24.0,
            width: 24.0,
            child: loader,
          )
        : loader;
  }
}
