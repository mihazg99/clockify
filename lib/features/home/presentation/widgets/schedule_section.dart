import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/domain/router/pages.dart';
import 'package:clockify/features/schedule/presentation/widgets/schedule_card.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ScheduleSection extends StatelessWidget {
  const ScheduleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Tracked tasks',
              style: ClockifyTextStyles.h2,
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, Pages.schedule),
              child: const Text(
                'See all',
                style: ClockifyTextStyles.h2,
              ),
            ),
          ],
        ),
        Gap(AppSizes.verticalBig),
        ScheduleCard(),
      ],
    );
  }
}
