import 'package:feed_delivery/presentation/custom_widget/back_button_widget.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_button.dart';
import 'package:feed_delivery/presentation/pages/list_bunker/list_bunker_page.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailBunkerPage extends StatelessWidget {
  final ListBunkerItemModel item;

  const DetailBunkerPage({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final String iconName = item.isEmpty ? 'bunker_load' : 'bunker_full';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text(
          context.localizations.back,
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
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icons/$iconName.svg',
                    width: 60,
                    height: 60,
                    colorFilter: item.isEmpty
                        ? ColorFilter.mode(
                            theme.colorScheme.onPrimary,
                            BlendMode.srcIn,
                          )
                        : null,
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
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: theme.dividerColor),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '${item.index} ',
                        style: theme.textTheme.labelLarge!.copyWith(
                            fontSize: 60,
                            color: item.isEmpty
                                ? theme.colorScheme.onPrimary
                                : null),
                      ),
                      Text(
                        context.localizations.bunker,
                        style: theme.textTheme.labelLarge!.copyWith(
                            fontSize: 60,
                            color: item.isEmpty
                                ? theme.colorScheme.onPrimary
                                : null),
                      )
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24),
            if (item.isEmpty)
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
                style: theme.textTheme.titleMedium!.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
