import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/presentation/widgets/custom_app_bar.dart';
import 'package:clockify/features/schedule/presentation/widgets/schedule_card.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const items = ['item1', 'item2'];

class SchedulePage extends ConsumerWidget {
  const SchedulePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: ClockifyColors.backgroundColor,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: items.length,
                  separatorBuilder: (context, index) {
                    return const Gap(AppSizes.smallPadding);
                  },
                  itemBuilder: (context, index) {
                    return const ScheduleCard();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
