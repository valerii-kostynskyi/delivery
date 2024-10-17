import 'package:dostavka/presentation/custom_widget/license_palet.dart';
import 'package:dostavka/presentation/custom_widget/progress_widget.dart';
import 'package:dostavka/presentation/pages/task_list/widget/task_list_item.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TaskListPage extends StatelessWidget {
  const TaskListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 48),
              Text(
                context.localizations.sectorNumber(1),
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(height: 8),
              const LicensePlate(adminNumber: 'AA 1234 AA'),
              const SizedBox(height: 8),
              Text(
                context.localizations.selectTask,
                style: Theme.of(context).textTheme.labelMedium?.copyWith(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TaskListItem(
                      taskItemModel: TaskItemModel(
                        index: 1,
                        completedUnits: 12,
                        totalUnits: 12,
                      ),
                      isTaskItem: true,
                      onTap: () => context.push('/task-page/1'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TaskListItem(
                      taskItemModel: TaskItemModel(
                        index: 2,
                        completedUnits: 8,
                        totalUnits: 12,
                      ),
                      isTaskItem: true,
                      onTap: () => context.push('/task-page/2'),
                    ),
                  ),
                  const SizedBox(height: 32),
                  SectorProgressComponent(
                    totalCapacity: 300,
                    items: [
                      ProgressListItem(
                        name: 'AA 1234 AA',
                        currentUnits: 42,
                        baseColor: const Color(0xFF3697FF),
                      ),
                      ProgressListItem(
                        name: 'BB 1234 BB',
                        currentUnits: 150,
                        baseColor: const Color(0xFFF57851),
                      ),
                      ProgressListItem(
                        name: 'BB 1234 BB',
                        currentUnits: 24,
                        baseColor: const Color.fromARGB(255, 7, 168, 7),
                      ),
                      ProgressListItem(
                        name: 'BB 1234 BB',
                        currentUnits: 14,
                        baseColor: const Color(0xFFF57851),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TaskItemModel {
  final int index;
  final int completedUnits;
  final int totalUnits;

  TaskItemModel({
    required this.index,
    required this.completedUnits,
    required this.totalUnits,
  });
}
