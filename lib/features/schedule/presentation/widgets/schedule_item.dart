import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/presentation/widgets/text_icon_button.dart';
import 'package:clockify/features/schedule/presentation/widgets/bottom_sheets/edit_schedule_bottom_sheet.dart';
import 'package:clockify/features/schedule/presentation/widgets/bottom_sheets/remove_schedule_bottom_sheet.dart';
import 'package:clockify/generated/assets.gen.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class ScheduleItem extends StatelessWidget {
  const ScheduleItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.smallPadding),
      child: Row(
        children: [
          ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 4.3),
            child: const Text(
              'Task skdka sdk sakdk sakdask',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Gap(8),
          Text('*'),
          Gap(8),
          ConstrainedBox(
            constraints:
            BoxConstraints(maxWidth: MediaQuery.of(context).size.width / 4.3),
            child: const Text(
              'Project skdka sdk sakdk sakdask',
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          Spacer(),
          TextIconButton(
            iconPath: Assets.svg.edit.path,
            text: 'Edit',
            onTap: () => Scaffold.of(context).showBottomSheet(
                  (BuildContext context) {
                return const EditScheduleBottomSheet();
              },
            ),
          ),
          IconButton(
            onPressed: () => Scaffold.of(context).showBottomSheet(
                  (BuildContext context) {
                return const RemoveScheduleBottomSheet();
              },
            ),
            icon: SvgPicture.asset(Assets.svg.remove.path),
          )
        ],
      ),
    );
  }
}
