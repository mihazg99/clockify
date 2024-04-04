import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

class RemoveTask {
  final TasksRepository _tasksRepository;

  RemoveTask(this._tasksRepository);

  EitherFailureOr<Task> call(String id) =>
      _tasksRepository.removeTask(id);
}
