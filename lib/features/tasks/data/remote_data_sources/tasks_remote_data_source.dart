import 'package:clockify/features/tasks/data/models/responses/task_response.dart';

abstract interface class TasksRemoteDataSource {
  Future<List<TaskResponse>> getTasks(String workspaceId, String projectId);
}
