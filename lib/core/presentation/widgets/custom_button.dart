import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/generated/assets.gen.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String label;
  final bool isLoading;
  final bool isEnabled;
  final Color backgroundColor;
  final Color foregroundColor;

  const CustomButton._({
    required this.onTap,
    required this.label,
    required this.isLoading,
    required this.isEnabled,
    required this.backgroundColor,
    required this.foregroundColor,
  });

  factory CustomButton.primary({
    required VoidCallback onTap,
    required String label,
    bool isLoading = false,
    bool isEnabled = true,
  }) =>
      CustomButton._(
        onTap: isLoading ? () {} : onTap,
        label: label,
        isLoading: isLoading,
        isEnabled: isEnabled,
        backgroundColor: ClockifyColors.backgroundColor,
        foregroundColor: Colors.white,
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 51,
      child: OutlinedButton(
        onPressed: onTap,
        style: OutlinedButton.styleFrom(
          side: const BorderSide(width: 2, color: Colors.white), // Border width and color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.buttonRadius), // Border radius
          ),
        ),
        child: Row(
          children: [
            const Spacer(),
            Text(
              label,
              style: ClockifyTextStyles.button,
            ),
            const Spacer(),
            SvgPicture.asset(Assets.svg.arrowRight.path)
          ],
        ),
      ),
    );
  }
}
