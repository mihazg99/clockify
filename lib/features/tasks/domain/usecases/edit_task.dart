import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

class EditTask {
  final TasksRepository _tasksRepository;

  EditTask(this._tasksRepository);

  EitherFailureOr<Task> call(String name) =>
      _tasksRepository.editTask(name);
}
