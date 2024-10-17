import 'package:dostavka/presentation/pages/task_list/task_list_page.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  final TaskItemModel taskItemModel;
  final bool isTaskItem;
  final void Function()? onTap;
  const TaskListItem({
    super.key,
    required this.taskItemModel,
    this.isTaskItem = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    bool isCompleted = taskItemModel.totalUnits == taskItemModel.completedUnits;
    final theme = Theme.of(context);
    String title = isTaskItem
        ? context.localizations.taskNumber(taskItemModel.index)
        : context.localizations.sectorNumber(taskItemModel.index);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: isCompleted
              ? theme.colorScheme.onSurface
              : theme.scaffoldBackgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: theme.primaryColor.withOpacity(0.15),
              offset: isCompleted ? const Offset(0, 0) : const Offset(2, 2),
              blurRadius: isCompleted ? 0 : 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.textTheme.labelMedium!.copyWith(fontSize: 20),
            ),
            Row(
              children: [
                if (isTaskItem) ...[
                  Text(
                    '${taskItemModel.completedUnits}',
                    style: theme.textTheme.labelMedium!.copyWith(
                        fontSize: 20,
                        color: isCompleted
                            ? theme.focusColor
                            : theme.primaryColor),
                  ),
                  Text(
                    ' /${taskItemModel.totalUnits}',
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: isCompleted
                            ? theme.focusColor
                            : theme.primaryColor),
                  ),
                  const SizedBox(width: 8.0),
                ],
                Icon(isCompleted ? Icons.check : Icons.arrow_forward_ios,
                    color: isCompleted ? theme.focusColor : theme.dividerColor)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
