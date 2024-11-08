import 'package:flutter/material.dart';

class WarningWidget extends StatelessWidget {
  final String message;
  const WarningWidget({
    super.key,
    required this.message,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(color: theme.colorScheme.onBackground),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 22,
              height: 22,
              child: Icon(
                Icons.warning_amber_rounded,
                color: Theme.of(context).colorScheme.onSecondary,
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                message,
                style:
                    TextStyle(color: Theme.of(context).colorScheme.onSecondary),
              ),
            )
          ],
        ),
      ),
    );
  }
}
