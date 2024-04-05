import 'package:codeland/common/colors.dart';
import 'package:codeland/common/theme.dart';
import 'package:flutter/material.dart';

import 'circular_progress_bar.dart';

class SecondaryButton extends StatelessWidget {
  final Function onPressed;
  final String text;
  final bool hasIcon;
  final bool disabled;
  final double borderRadius;
  final double height;
  final double width;
  final Color color;
  final Color textColor;
  final bool isLoading;

  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.hasIcon = false,
    this.disabled = false,
    this.borderRadius = 12.0,
    this.height = 50.0,
    this.width = 80.0,
    this.color = AppColors.orange,
    this.textColor = AppColors.white,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      width: width,
      height: height,
      child: isLoading
          ? TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  color,
                ),
                elevation: MaterialStateProperty.all(0),
              ),
              child: const Center(
                child: CircularProgressBar(),
              ),
            )
          : TextButton(
              onPressed: () {
                if (!disabled) onPressed();
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  color,
                ),
                elevation: MaterialStateProperty.all(0),
              ),
              child: Text(
                text,
                style: appTextTheme().bodyMedium?.copyWith(
                      color: textColor,
                    ),
                textAlign: TextAlign.left,
              ),
            ),
    );
  }
}
