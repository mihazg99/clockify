import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

class GetTask {
  final TasksRepository _tasksRepository;

  GetTask(this._tasksRepository);

  EitherFailureOr<Task> call(String id) =>
      _tasksRepository.getTask(id);
}
