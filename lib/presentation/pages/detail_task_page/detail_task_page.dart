import 'package:dostavka/presentation/custom_widget/back_button_widget.dart';
import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailTaskPage extends StatelessWidget {
  final int index;

  const DetailTaskPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text(
          'Detail Page $index',
          style: theme.textTheme.titleMedium,
        ),
        leadingWidth: 48,
        leading: BackButtonWidget(
          onTap: () => context.pop(),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/bunker_full.svg',
              width: 60,
              height: 60,
            ),
            const SizedBox(height: 24),
            Text(context.localizations.ttnTask),
            const SizedBox(height: 12),
            Text(
              context.localizations.ttnNumber('123123123123123'),
              style: theme.textTheme.labelMedium,
            ),
            const SizedBox(height: 12),
            Text(
              context.localizations.sectorNumber(1),
              style: theme.textTheme.labelMedium,
            ),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Hero(
                  tag: 'task-$index',
                  child: Text(
                    '$index ',
                    style: theme.textTheme.labelLarge!.copyWith(fontSize: 60),
                  ),
                ),
                Text(
                  context.localizations.bunker,
                  style: theme.textTheme.labelLarge!.copyWith(fontSize: 60),
                )
              ],
            ),
            const SizedBox(height: 24),
            CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: context.localizations.confirmCompletion,
            ),
            const SizedBox(height: 12),
            TextButton(
              onPressed: () => context.pop(),
              child: Text(
                context.localizations.back,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
