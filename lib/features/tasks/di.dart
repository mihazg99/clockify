import 'package:clockify/core/di.dart';
import 'package:clockify/features/tasks/data/mappers/task_response_mapper.dart';
import 'package:clockify/features/tasks/data/repositories/tasks_repository_impl.dart';
import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:clockify/features/tasks/domain/usecases/get_tasks.dart';
import 'package:clockify/features/tasks/presentation/notifiers/tasks_notifier.dart';
import 'package:flutter_architecture/base_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// ********* DATA LAYER *********
final _tasksRepositoryProvider = Provider<TasksRepository>(
  (ref) => TasksRepositoryImpl(
    ref.watch(apiClientProvider),
    ref.watch(taskResponseMapperProvider),
  ),
);

// ******** DOMAIN LAYER ********
final getTasksUseCaseProvider = Provider<GetTasks>(
  (ref) => GetTasks(
    ref.watch(_tasksRepositoryProvider),
  ),
);

// ***** PRESENTATION LAYER ******
final tasksNotifierProvider =
    BaseStateNotifierProvider<TasksNotifier, List<Task>>(
  (ref) => TasksNotifier(
    ref.watch(getTasksUseCaseProvider),
    ref,
  )..getTasks(),
);
