import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';

class WarningWidget extends StatelessWidget {
  const WarningWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(color: Theme.of(context).colorScheme.onBackground),
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
                context.localizations.carNumberNotRegistered,
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
