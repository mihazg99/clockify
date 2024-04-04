// ignore_for_file: always_use_package_imports
import 'dart:io';

import 'package:clockify/features/tasks/data/models/responses/task_response.dart';
import 'package:clockify/features/tasks/data/remote_data_sources/tasks_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@RestApi()
abstract class ApiClient implements TasksRemoteDataSource {
  factory ApiClient(Dio dio) = _ApiClient;

  @override
  @GET(
      '/v1/workspaces/{workspaceId}/projects/{projectId}/tasks')
  Future<List<TaskResponse>> getTasks(
    @Path('workspaceId') String workspaceId,
    @Path('projectId') String projectId,
  );
}
