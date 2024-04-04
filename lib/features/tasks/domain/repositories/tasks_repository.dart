import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

abstract interface class TasksRepository {
  EitherFailureOr<List<Task>> getTasks(String projectId, String workspaceId);
  EitherFailureOr<Task> createTask(Task task);
  EitherFailureOr<Task> getTask(String id);
  EitherFailureOr<Task> editTask(String name);
  EitherFailureOr<Task> removeTask(String id);
}
