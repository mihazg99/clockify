import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final String id;
  final String name;
  final String status;
  final String projectId;
  final String duration;
  final String estimate;

  const Task(
  {
    required this.id,
    required this.name,
    required this.status,
    required this.projectId,
    required this.duration,
    required this.estimate,
}
  );

  @override
  List<Object?> get props => [id,name,status,projectId,duration,estimate];
}
