import 'package:clockify/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:clockify/core/presentation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class CreateScheduleBottomSheet extends StatelessWidget {
  const CreateScheduleBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Create a task',
      actionButtonText: 'Create',
      actionOnTap: () {},
      widgets: [
        CustomTextfield.primary(
          label: 'Task name',
          controller: TextEditingController(),
        ),
      ],
    );
  }
}
