import 'package:clockify/core/constants/app_sizes.dart';
import 'package:clockify/core/presentation/widgets/custom_app_bar.dart';
import 'package:clockify/features/tasks/di.dart';
import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/presentation/widgets/task_card.dart';
import 'package:clockify/features/schedule/presentation/widgets/schedule_card.dart';
import 'package:clockify/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_architecture/base_state_notifier.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

const items = ['item1', 'item2'];

class TasksPage extends ConsumerWidget {
  const TasksPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tasks = ref.watch(tasksNotifierProvider);

    return Scaffold(
      backgroundColor: ClockifyColors.backgroundColor,
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              switch (tasks) {
                BaseInitial<List<Task>>() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                BaseLoading<List<Task>>() => const Center(
                    child: CircularProgressIndicator(),
                  ),
                BaseError<List<Task>>(failure: final failure) => Text(
                    failure.title,
                  ),
                BaseData<List<Task>>(data: final tasks) => Expanded(
                    child: ListView.separated(
                      shrinkWrap: true,
                      itemCount: tasks.length,
                      separatorBuilder: (context, index) {
                        return const Gap(AppSizes.smallPadding);
                      },
                      itemBuilder: (context, index) {
                        return  TaskCard(
                          name: tasks[index].name,
                        );
                      },
                    ),
                  ),
              },
            ],
          ),
        ),
      ),
    );
  }
}
