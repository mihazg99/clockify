import 'package:clockify/core/domain/router/pages.dart';
import 'package:clockify/features/home/presentation/pages/home_page.dart';
import 'package:clockify/features/schedule/presentation/pages/schedule_page.dart';
import 'package:clockify/features/tasks/presentation/pages/task_page.dart';
import 'package:flutter/material.dart';

final routes = {
  Pages.home: (context) => const HomePage(),
  Pages.schedule: (context) => const SchedulePage(),
  Pages.tasks: (context) => const TasksPage(),
};
