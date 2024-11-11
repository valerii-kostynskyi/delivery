import 'package:feed_delivery/presentation/pages/list_silo/list_silo_page.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ListSiloItem extends StatelessWidget {
  final ListSiloItemModel cardItemModel;
  final void Function()? onTap;

  const ListSiloItem({
    super.key,
    required this.cardItemModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      color: cardItemModel.isEmpty
          ? theme.secondaryHeaderColor
          : theme.colorScheme.onSurface,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 72,
                      child: Text(
                        '${cardItemModel.index}',
                        style: theme.textTheme.labelLarge!.copyWith(
                          fontSize: 60,
                          color: cardItemModel.isEmpty
                              ? theme.colorScheme.onPrimary
                              : theme.focusColor,
                        ),
                      ),
                    ),
                    if (cardItemModel.isEmpty)
                      SvgPicture.asset(
                        'assets/icons/silo_load.svg',
                        width: 30,
                        height: 30,
                        color: theme.colorScheme.onPrimary,
                      )
                    else
                      SvgPicture.asset(
                        'assets/icons/silo_full.svg',
                        width: 30,
                        height: 30,
                      )
                  ],
                ),
              ),
              const SizedBox(height: 8),
              Text(
                cardItemModel.isEmpty
                    ? context.localizations.empty
                    : context.localizations.full,
                style: theme.textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
