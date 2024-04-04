import 'package:clockify/core/presentation/widgets/custom_textfield.dart';
import 'package:clockify/core/presentation/widgets/date_picker.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constants/app_sizes.dart';

class TimeAndDatePicker extends StatelessWidget {
  final TextEditingController fromController;
  final TextEditingController toController;
  final Function(DateTime date) onDateUpdate;

  const TimeAndDatePicker({
    super.key,
    required this.fromController,
    required this.toController,
    required this.onDateUpdate,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextfield.timeInput(
          label: 'From',
          controller: TextEditingController(),
        ),
        const Gap(AppSizes.smallPadding),
        const Text(
          '-',
          style: ClockifyTextStyles.h2,
        ),
        const Gap(AppSizes.smallPadding),
        CustomTextfield.timeInput(
          label: 'To',
          controller: TextEditingController(),
        ),
        const Gap(AppSizes.smallPadding),
        CustomDatePicker(
          onDateUpdate: onDateUpdate,
        )
      ],
    );
  }
}
