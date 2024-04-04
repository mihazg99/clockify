import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/presentation/widgets/custom_button.dart';
import 'package:clockify/features/home/presentation/widgets/schedule_section.dart';
import 'package:clockify/features/home/presentation/widgets/task_section.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ClockifyColors.backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: AppSizes.horizontalPadding,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(AppSizes.verticalNormal),
                const Center(
                  child: Text(
                    'Time Tracker',
                    style: ClockifyTextStyles.h1,
                  ),
                ),
                const Gap(AppSizes.verticalBig),
                const TaskSection(),
                CustomButton.primary(
                  onTap: () {},
                  label: 'Track time',
                ),
                Gap(AppSizes.verticalBig*2),
                ScheduleSection()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
