import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/presentation/widgets/custom_button.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CustomBottomSheet extends StatelessWidget {
  final String title;
  final String actionButtonText;
  final VoidCallback actionOnTap;
  final List<Widget> widgets;

  const CustomBottomSheet({
    super.key,
    required this.title,
    required this.actionButtonText,
    required this.actionOnTap,
    required this.widgets,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: const BoxDecoration(
        color: ClockifyColors.primaryColorLight,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Gap(AppSizes.verticalBig),
          Text(
            title,
            style: ClockifyTextStyles.h1,
          ),
          const Gap(AppSizes.verticalBig),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: widgets,
          ),
          const Gap(AppSizes.verticalBig),
          CustomButton.primary(
            onTap: actionOnTap,
            label: actionButtonText,
          ),
          const Gap(AppSizes.verticalNormal),
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Cancel',
              style: ClockifyTextStyles.normal,
            ),
          ),
          const Gap(AppSizes.verticalNormal),
        ],
      ),
    );
  }
}
