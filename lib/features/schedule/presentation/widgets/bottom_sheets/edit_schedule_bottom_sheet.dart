import 'package:clockify/core/presentation/widgets/TimeAndDatePicker.dart';
import 'package:clockify/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:flutter/material.dart';

class EditScheduleBottomSheet extends StatelessWidget {
  const EditScheduleBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBottomSheet(
      title: 'Edit schedule',
      actionButtonText: 'Edit',
      actionOnTap: () {},
      widgets: [
        TimeAndDatePicker(
          fromController: TextEditingController(),
          toController: TextEditingController(),
          onDateUpdate: (date) {},
        )
      ],
    );
  }
}
