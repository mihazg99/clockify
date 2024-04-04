import 'package:clockify/features/tasks/data/models/responses/task_response.dart';
import 'package:clockify/features/tasks/domain/entities/task.dart';
import 'package:flutter_architecture/flutter_architecture.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final taskResponseMapperProvider = Provider<ResponseMapper<Task, TaskResponse>>(
  (ref) => (response) => Task(
        name: response.name,
        id: response.id.toString(),
        status: response.status,
        projectId: response.projectId,
        duration: response.duration,
        estimate: response.estimate,
      ),
);
