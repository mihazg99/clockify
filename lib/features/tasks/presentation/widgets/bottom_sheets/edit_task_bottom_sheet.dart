import 'package:clockify/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:clockify/core/presentation/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class EditTaskBottomSheet extends StatelessWidget {
  const EditTaskBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Edit task',
      actionButtonText: 'Edit',
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
