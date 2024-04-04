import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/generated/assets.gen.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

class TextIconButton extends StatelessWidget {
  final VoidCallback onTap;
  final String iconPath;
  final String text;
  const TextIconButton({super.key, required this.iconPath, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      child: Row(
        children: [
          Text(
            text,
            style: ClockifyTextStyles.h3,
          ),
          const Gap(AppSizes.smallPadding),
          SvgPicture.asset(
            iconPath,
          )
        ],
      ),
    );
  }
}
