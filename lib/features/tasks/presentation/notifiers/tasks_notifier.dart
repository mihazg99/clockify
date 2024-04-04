import 'package:clockify/core/constants/project_settings.dart';
import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/usecases/get_tasks.dart';
import 'package:flutter_architecture/base_state_notifier.dart';

class TasksNotifier extends BaseStateNotifier<List<Task>> {
  final GetTasks _getTasks;

  TasksNotifier(
    this._getTasks,
    super.ref,
  );

  void getTasks() => execute(
        _getTasks(
          ProjectSettings.workspaceId,
          ProjectSettings.projectId,
        ),
      );
}
