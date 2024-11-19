import 'package:delivery/data/models/task_list_item_model.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskListItem extends StatelessWidget {
  final TaskListItemModel itemModel;
  final void Function()? onTap;

  const TaskListItem({
    super.key,
    required this.itemModel,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    Color backgroundColor;
    Color textColor;
    String iconName;
    switch (itemModel.status) {
      case Status.full:
        backgroundColor = theme.colorScheme.onSurface;
        textColor = theme.focusColor;
        iconName = 'check';

        break;
      case Status.empty:
        backgroundColor = theme.colorScheme.background;
        textColor = theme.unselectedWidgetColor;
        iconName = 'upload';
        break;
      case Status.inProcess:
        backgroundColor = theme.secondaryHeaderColor;
        textColor = theme.colorScheme.onPrimary;
        iconName = 'upload';
        break;
    }

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        margin: const EdgeInsets.only(bottom: 8),
        height: 96,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.0),
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  itemModel.title,
                  style: theme.textTheme.bodyLarge!.copyWith(
                    color: itemModel.status == Status.empty
                        ? textColor
                        : theme.primaryColor,
                  ),
                ),
                Text(
                  'status',
                  style: theme.textTheme.labelSmall!.copyWith(
                    fontSize: 16,
                    color: itemModel.status == Status.empty
                        ? textColor
                        : theme.primaryColor,
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
                        'assets/icons/$iconName.svg',
                        colorFilter: ColorFilter.mode(
                          textColor,
                          BlendMode.srcIn,
                        ),
                      ),
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
                if (itemModel.status == Status.empty)
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
                            fontSize: 12, color: theme.colorScheme.error),
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
}
