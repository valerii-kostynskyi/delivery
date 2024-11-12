import 'package:feed_delivery/presentation/custom_widget/license_palet.dart';
import 'package:feed_delivery/presentation/custom_widget/progress_widget.dart';
import 'package:feed_delivery/presentation/pages/farm_info/widget/farm_info_task_item.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FarmInfoPage extends StatelessWidget {
  const FarmInfoPage({super.key});

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
                context.localizations.farmNumber(1),
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
                    child: FarmInfoTaskItem(
                      taskItemModel: FarmInfoTaskModel(
                        index: 1,
                        completedUnits: 12,
                        totalUnits: 12,
                      ),
                      isTaskItem: true,
                      onTap: () => context.push('/task-list-page/1'),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: FarmInfoTaskItem(
                      taskItemModel: FarmInfoTaskModel(
                        index: 2,
                        completedUnits: 8,
                        totalUnits: 12,
                      ),
                      isTaskItem: true,
                      onTap: () => context.push('/task-list-page/2'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FarmProgressComponent(
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
            ],
          ),
        ],
      ),
    );
  }
}

class FarmInfoTaskModel {
  final int index;
  final int completedUnits;
  final int totalUnits;

  FarmInfoTaskModel({
    required this.index,
    required this.completedUnits,
    required this.totalUnits,
  });
}
