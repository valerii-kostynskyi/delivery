import 'package:dostavka/presentation/pages/main_page/main_page.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardItem extends StatelessWidget {
  final CardItemModel cardItemModel;
  final void Function()? onTap;

  const CardItem({
    super.key,
    required this.cardItemModel,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardItemModel.isEmpty
          ? Theme.of(context).secondaryHeaderColor
          : Theme.of(context).colorScheme.onSurface,
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
                    Hero(
                      tag: 'cardItem-${cardItemModel.index}',
                      child: SizedBox(
                        height: 72,
                        child: Text(
                          '${cardItemModel.index}',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                fontSize: 60,
                                color: cardItemModel.isEmpty
                                    ? Theme.of(context).colorScheme.onPrimary
                                    : Theme.of(context).focusColor,
                              ),
                        ),
                      ),
                    ),
                    if (cardItemModel.isEmpty)
                      SvgPicture.asset(
                        'assets/icons/bunker_load.svg',
                        width: 30,
                        height: 30,
                        color: Theme.of(context).colorScheme.onPrimary,
                      )
                    else
                      SvgPicture.asset(
                        'assets/icons/bunker_full.svg',
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
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
