import 'package:clockify/features/tasks/data/models/responses/task_response.dart';
import 'package:clockify/features/tasks/data/remote_data_sources/tasks_remote_data_source.dart';
import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:clockify/features/tasks/domain/repositories/tasks_repository.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_architecture/flutter_architecture.dart';

class TasksRepositoryImpl with ErrorToFailureMixin implements TasksRepository {
  final TasksRemoteDataSource _tasksRemoteDataSource;
  final ResponseMapper<Task, TaskResponse> _tasksResponseMapper;

  TasksRepositoryImpl(
    this._tasksRemoteDataSource,
    this._tasksResponseMapper,
  );

  @override
  EitherFailureOr<List<Task>> getTasks(
      String projectId, String workspaceId) async {
    try {
      final result =
          await _tasksRemoteDataSource.getTasks(workspaceId,projectId);
      final tasks = result.map((e) => _tasksResponseMapper(e)).toList();

      return Right(tasks);
    } catch (e) {
      return Left(Failure.generic());
    }
  }

  @override
  EitherFailureOr<Task> createTask(Task task) {
    // TODO: implement createTask
    throw UnimplementedError();
  }

  @override
  EitherFailureOr<Task> editTask(String name) {
    // TODO: implement editTask
    throw UnimplementedError();
  }

  @override
  EitherFailureOr<Task> getTask(String id) {
    // TODO: implement getTask
    throw UnimplementedError();
  }

  @override
  EitherFailureOr<Task> removeTask(String id) {
    // TODO: implement removeTask
    throw UnimplementedError();
  }
}
