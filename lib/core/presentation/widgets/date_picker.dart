import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/generated/assets.gen.dart';
import 'package:clockify/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

final selectedDateProvider = StateProvider<DateTime>((ref) => DateTime.now());

class CustomDatePicker extends HookWidget {
  final Function(DateTime date) onDateUpdate;
  const CustomDatePicker({
    required this.onDateUpdate,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final selectedDate = useState<DateTime>(now);

    return GestureDetector(
      onTap: () async {
        final DateTime? picked = await showDatePicker(
          context: context,
          initialDate: selectedDate.value,
          firstDate: DateTime(2000),
          lastDate: DateTime(2100),
        );
        if (picked != null && picked != selectedDate.value) {
          selectedDate.value = picked;
          onDateUpdate(selectedDate.value);
        }
      },
      child: Row(
        children: [
          SvgPicture.asset(Assets.svg.calendar.path),
          const Gap(AppSizes.smallPadding),
          Text(
            selectedDate.value.year == now.year &&
                    selectedDate.value.month == now.month &&
                    selectedDate.value.day == now.day
                ? 'Today'
                : DateFormat('E, MMM d').format(selectedDate.value),
            style: ClockifyTextStyles.h2,
          ),
        ],
      ),
    );
  }
}
