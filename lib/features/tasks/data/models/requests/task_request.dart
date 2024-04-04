import 'package:json_annotation/json_annotation.dart';

part 'task_request.g.dart';

@JsonSerializable()
class TaskRequest {
  final String projectId;
  final String workspaceId;
  final String? name;

  TaskRequest(
    this.name, {
    required this.projectId,
    required this.workspaceId,
  });
}
