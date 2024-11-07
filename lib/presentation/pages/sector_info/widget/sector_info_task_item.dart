import 'package:feed_delivery/presentation/pages/sector_info/sector_info_page.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SectorInfoTaskItem extends StatelessWidget {
  final SectorInfoTaskModel taskItemModel;
  final bool isTaskItem;
  final void Function()? onTap;

  const SectorInfoTaskItem({
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
    String iconName = isCompleted ? 'check' : 'arrow-right';
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: 96,
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                title,
                style: theme.textTheme.labelMedium!.copyWith(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
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
              ],
            ),
            SvgPicture.asset(
              'assets/icons/$iconName.svg',
              colorFilter: ColorFilter.mode(
                isCompleted ? theme.focusColor : theme.dividerColor,
                BlendMode.srcIn,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
