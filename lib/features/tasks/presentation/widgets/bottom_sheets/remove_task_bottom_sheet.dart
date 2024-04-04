import 'package:clockify/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

class RemoveTaskBottomSheet extends StatelessWidget {
  const RemoveTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Remove task',
      actionButtonText: 'Remove',
      actionOnTap: () {},
      widgets: [
        Center(
          child: Text('Are you sure you want remove a task?',style: ClockifyTextStyles.normalBig,),
        )
      ],
    );
  }
}
