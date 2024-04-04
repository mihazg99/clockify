import 'package:json_annotation/json_annotation.dart';

part 'task_response.g.dart';

@JsonSerializable()
class TaskResponse {
  final String id;
  final String name;
  final String status;
  final String projectId;
  final String duration;
  final String estimate;

  TaskResponse( {
    required this.id,
    required this.name,
    required this.status,
    required this.projectId,
    required this.duration,
    required this.estimate,
  });

  factory TaskResponse.fromJson(Map<String, dynamic> json) =>
      _$TaskResponseFromJson(json);

}
