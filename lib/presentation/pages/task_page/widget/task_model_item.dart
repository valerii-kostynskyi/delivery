import 'package:dostavka/presentation/pages/task_page/task_page.dart';
import 'package:flutter/material.dart';

class TaskModelItem extends StatelessWidget {
  final TaskModel itemModel;
  final void Function()? onTap;

  const TaskModelItem({
    super.key,
    required this.itemModel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color backgroundColor;
    Color textColor;
    switch (itemModel.status) {
      case Status.full:
        backgroundColor = theme.colorScheme.onSurface;
        textColor = theme.focusColor;
        break;
      case Status.empty:
        backgroundColor = theme.colorScheme.background;
        textColor = theme.unselectedWidgetColor;
        break;
      case Status.inProcess:
        backgroundColor = theme.colorScheme.onBackground;
        textColor = theme.colorScheme.onSecondary;
        break;
    }

    IconData statusIcon;
    switch (itemModel.status) {
      case Status.full:
        statusIcon = Icons.check_circle;
        break;
      case Status.empty:
        statusIcon = Icons.remove_circle_outline;
        break;
      case Status.inProcess:
        statusIcon = Icons.autorenew;
        break;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: theme.primaryColor.withOpacity(0.15),
              offset: const Offset(2, 2),
              blurRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${itemModel.index}',
              style: theme.textTheme.labelLarge!.copyWith(
                color: textColor,
              ),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemModel.title,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  'status',
                  style: theme.textTheme.labelSmall!.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Row(
              children: [
                Icon(
                  statusIcon,
                  color: textColor,
                ),
                const SizedBox(width: 4.0),
                Text(
                  '${itemModel.tons}т',
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
