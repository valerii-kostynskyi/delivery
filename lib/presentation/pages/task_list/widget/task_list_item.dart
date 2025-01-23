import 'package:delivery/data/models/track_wraper/track_wraper.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:delivery/presentation/utility/extension/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskListItem extends StatelessWidget {
  final TrackWraper itemModel;
  final void Function()? onTap;
  final bool isClicable;

  const TaskListItem({
    super.key,
    required this.itemModel,
    this.onTap,
    this.isClicable = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final taskStatus = _determineTaskStatus(
      isDone: itemModel.task.isDone,
      isLocked: itemModel.task.isLocked,
      theme: theme,
    );

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.only(bottom: 8),
        height: 96,
        decoration: BoxDecoration(
          color: taskStatus.backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: [
            BoxShadow(
              color: theme.primaryColor.withOpacity(0.15),
              offset: isClicable ? const Offset(2, 2) : const Offset(0, 0),
              blurRadius: isClicable ? 2 : 0,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${itemModel.task.sequenceNumber}',
              style: theme.textTheme.labelLarge!.copyWith(
                color: taskStatus.textColor,
              ),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.task.houseName,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
                Text(
                  "старт, фініш, ріст",
                  style: theme.textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                    color: theme.primaryColor,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 16,
                      height: 16,
                      child: SvgPicture.asset(
                        'assets/icons/${taskStatus.iconName}.svg',
                        colorFilter: ColorFilter.mode(
                          taskStatus.textColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      formatWeight(itemModel.task.amount),
                      style: theme.textTheme.bodyLarge!.copyWith(
                        color: taskStatus.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                if (itemModel.task.isLocked && !itemModel.task.isDone)
                  Row(
                    children: [
                      SizedBox(
                        width: 12,
                        height: 12,
                        child: SvgPicture.asset(
                          'assets/icons/alert-triangle.svg',
                          colorFilter: ColorFilter.mode(
                            theme.colorScheme.error,
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                      const SizedBox(width: 4.0),
                      Text(
                        context.localizations.noFeed,
                        style: theme.textTheme.headlineSmall!.copyWith(
                          fontSize: 12,
                          color: theme.colorScheme.error,
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _TaskStatus _determineTaskStatus({
    required bool isDone,
    required bool isLocked,
    required ThemeData theme,
  }) {
    if (isDone) {
      return _TaskStatus(
        backgroundColor: theme.indicatorColor,
        textColor: theme.focusColor,
        iconName: 'check',
      );
    } else if (isLocked) {
      return _TaskStatus(
        backgroundColor: theme.colorScheme.background,
        textColor: theme.unselectedWidgetColor,
        iconName: 'upload',
      );
    } else {
      return _TaskStatus(
        backgroundColor: theme.secondaryHeaderColor,
        textColor: theme.colorScheme.onPrimary,
        iconName: 'upload',
      );
    }
  }
}

class _TaskStatus {
  final Color backgroundColor;
  final Color textColor;
  final String iconName;

  _TaskStatus({
    required this.backgroundColor,
    required this.textColor,
    required this.iconName,
  });
}
