import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';

class ProgressPage extends StatelessWidget {
  const ProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: SectorProgressComponent(
              totalCapacity: 300,
              items: [
                ProgressListItem(
                  name: 'AA 1234 AA',
                  currentUnits: 42,
                  baseColor: Color(0xFF3697FF),
                ),
                ProgressListItem(
                  name: 'BB 1234 BB',
                  currentUnits: 150,
                  baseColor: Color(0xFFF57851),
                ),
                ProgressListItem(
                  name: 'BB 1234 BB',
                  currentUnits: 24,
                  baseColor: Color.fromARGB(255, 7, 168, 7),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

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

class SectorProgressComponent extends StatelessWidget {
  final List<ProgressListItem> items;
  final int totalCapacity;
  final double barHeight = 64;

  const SectorProgressComponent({
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
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 6.0,
            spreadRadius: 4.0,
          ),
        ],
      ),
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
          Stack(
            children: [
              Container(
                height: barHeight + 6,
                decoration: BoxDecoration(
                  color: theme.canvasColor,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Row(
                children: [
                  ...items.map((item) {
                    final gradient = LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        item.baseColor,
                        item.baseColor.withOpacity(0.65),
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
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
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
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Column(
            children: items.map((item) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.person, color: item.baseColor),
                        const SizedBox(width: 8),
                        Text(
                          item.name,
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                      ],
                    ),
                    Text(
                      '${item.currentUnits} т',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
