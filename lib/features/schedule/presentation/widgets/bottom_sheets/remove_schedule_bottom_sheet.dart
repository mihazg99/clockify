import 'package:clockify/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class RemoveScheduleBottomSheet extends StatelessWidget {
  const RemoveScheduleBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Remove schedule',
      actionButtonText: 'Remove',
      actionOnTap: () {},
      widgets: const [
        Center(
          child: Text(
            'Are you sure you want remove a tracked task?',
            style: ClockifyTextStyles.normalBig,
          ),
        )
      ],
    );
  }
}
