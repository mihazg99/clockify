import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/presentation/widgets/text_icon_button.dart';
import 'package:clockify/features/tasks/presentation/widgets/bottom_sheets/edit_task_bottom_sheet.dart';
import 'package:clockify/features/tasks/presentation/widgets/bottom_sheets/remove_task_bottom_sheet.dart';
import 'package:clockify/generated/assets.gen.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TaskCard extends StatelessWidget {
  final String name;
  const TaskCard({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
        color: Colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 36,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: const BoxDecoration(
                color: ClockifyColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.buttonRadius),
                  topRight: Radius.circular(AppSizes.buttonRadius),
                ),
              ),
              child: Text(
                name,
                style: ClockifyTextStyles.h3,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextIconButton(
                  onTap: () => Scaffold.of(context).showBottomSheet(
                    (BuildContext context) {
                      return const EditTaskBottomSheet();
                    },
                  ),
                  iconPath: Assets.svg.edit.path,
                  text: 'Edit',
                ),
                TextIconButton(
                  onTap: () => Scaffold.of(context).showBottomSheet(
                        (BuildContext context) {
                      return const RemoveTaskBottomSheet();
                    },
                  ),
                  iconPath: Assets.svg.remove.path,
                  text: 'Remove',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
