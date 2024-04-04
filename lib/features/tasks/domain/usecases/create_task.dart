import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

class CreateTask {
  final TasksRepository _tasksRepository;

  CreateTask(this._tasksRepository);

  EitherFailureOr<Task> call(Task task) =>
      _tasksRepository.createTask(task);
}
