import 'package:dostavka/presentation/custom_widget/progress_widget.dart';
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
