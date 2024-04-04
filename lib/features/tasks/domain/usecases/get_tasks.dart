import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

class GetTasks {
  final TasksRepository _tasksRepository;

  GetTasks(this._tasksRepository);

  EitherFailureOr<List<Task>> call(String projectId, String workspaceId) =>
      _tasksRepository.getTasks(projectId,workspaceId);
}
