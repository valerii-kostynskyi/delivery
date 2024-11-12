import 'package:feed_delivery/presentation/custom_widget/dotted_separator.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';

class ProgressListItem {
  final String name;
  final int currentUnits;
  final Color baseColor;

  ProgressListItem({
    required this.name,
    required this.currentUnits,
    required this.baseColor,
  });
}

class FarmProgressComponent extends StatelessWidget {
  final List<ProgressListItem> items;
  final int totalCapacity;
  final double barHeight = 56;

  const FarmProgressComponent({
    super.key,
    required this.items,
    required this.totalCapacity,
  });

  @override
  Widget build(BuildContext context) {
    int totalLoaded = items.fold(0, (sum, item) => sum + item.currentUnits);
    int remainingCapacity = totalCapacity - totalLoaded;
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: theme.disabledColor.withOpacity(0.48),
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                context.localizations.totalActual,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                '$totalLoaded / $totalCapacity т',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            height: barHeight + 8,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: theme.canvasColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                ...items.map((item) {
                  final gradient = LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      item.baseColor,
                      item.baseColor.withOpacity(0.8),
                    ],
                  );
                  return Flexible(
                    flex: item.currentUnits,
                    child: Container(
                      height: barHeight,
                      decoration: BoxDecoration(
                        gradient: gradient,
                        borderRadius: item == items.first
                            ? const BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                              )
                            : item == items.last
                                ? const BorderRadius.only(
                                    topRight: Radius.circular(6),
                                    bottomRight: Radius.circular(6),
                                  )
                                : BorderRadius.zero,
                      ),
                    ),
                  );
                }),
                if (remainingCapacity > 0)
                  Flexible(
                    flex: remainingCapacity,
                    child: Container(
                      height: barHeight,
                      decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          Column(
            children: List.generate(items.length, (index) {
              return Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 18,
                              width: 4,
                              decoration: BoxDecoration(
                                color: items[index].baseColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              items[index].name,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        Text(
                          '${items[index].currentUnits} т',
                          style: Theme.of(context)
                              .textTheme
                              .bodyLarge
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  if (index != items.length - 1) const DottedSeparator(),
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
