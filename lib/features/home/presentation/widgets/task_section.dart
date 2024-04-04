import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/domain/router/pages.dart';
import 'package:clockify/core/presentation/widgets/TimeAndDatePicker.dart';
import 'package:clockify/core/presentation/widgets/custom_bottom_sheet.dart';
import 'package:clockify/core/presentation/widgets/custom_textfield.dart';
import 'package:clockify/core/presentation/widgets/date_picker.dart';
import 'package:clockify/features/home/presentation/widgets/dropdown_menu.dart';
import 'package:clockify/features/tasks/presentation/widgets/bottom_sheets/create_task_bottom_sheet.dart';
import 'package:clockify/features/tasks/presentation/widgets/bottom_sheets/remove_task_bottom_sheet.dart';
import 'package:clockify/generated/assets.gen.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

class TaskSection extends StatelessWidget {
  const TaskSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Tasks',
              style: ClockifyTextStyles.h2,
            ),
            const Spacer(),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, Pages.tasks),
              child: const Text(
                'See all',
                style: ClockifyTextStyles.h2,
              ),
            ),
            const Gap(AppSizes.smallPadding),
            InkWell(
              onTap: () => showBottom(context),
              child: SvgPicture.asset(
                Assets.svg.plus.path,
              ),
            )
          ],
        ),
        const Gap(AppSizes.verticalBig),
        const CustomDropdownMenu(),
        const Gap(AppSizes.verticalBig),
        const Text(
          'Time and date',
          style: ClockifyTextStyles.h2,
        ),
        const Gap(AppSizes.verticalNormal),
        TimeAndDatePicker(
          fromController: TextEditingController(),
          toController: TextEditingController(),
          onDateUpdate: (onDateUpdate) {},
        ),
        const Gap(AppSizes.verticalBig)
      ],
    );
  }

  void showBottom(context) =>
      Scaffold.of(context).showBottomSheet((BuildContext context) {
        return const CreateTaskBottomSheet();
      });
}
