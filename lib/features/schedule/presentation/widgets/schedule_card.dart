import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/features/schedule/presentation/widgets/schedule_item.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';

const items = ['121','2121','212','241'];

class ScheduleCard extends StatelessWidget {
  const ScheduleCard({super.key});

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
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 12.0),
              decoration: const BoxDecoration(
                color: ClockifyColors.secondaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(AppSizes.buttonRadius),
                  topRight: Radius.circular(AppSizes.buttonRadius),
                ),
              ),
              child: const Text(
                'Today',
                style: ClockifyTextStyles.h3,
              ),
            ),
          ),
          Flexible(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: items.length,
              itemBuilder: (context, index) {
                return const ScheduleItem();
              }, separatorBuilder: (BuildContext context, int index) {
                return const Divider();
            },
            ),
          ),
        ],
      ),
    );
  }
}
