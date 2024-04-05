import 'package:codeland/common/theme.dart';
import 'package:flutter/material.dart';

import 'circular_progress_bar.dart';
import 'colors.dart';

class PrimaryButton extends StatelessWidget {
  final Function onPressed;
  final bool disabled;
  final String text;
  final double width;
  final double height;
  final double borderRadius;
  final BoxBorder? border;
  final Color color;
  final bool isLoading;

  const PrimaryButton({
    super.key,
    required this.onPressed,
    this.disabled = false,
    required this.text,
    this.width = 106.0,
    this.height = 40.0,
    this.borderRadius = 12.0,
    this.border,
    this.color = AppColors.orange,
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
                style: appTextTheme().labelLarge?.copyWith(
                      color: AppColors.white,
                    ),
                textAlign: TextAlign.left,
              ),
            ),
    );
  }
}
