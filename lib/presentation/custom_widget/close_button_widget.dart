import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  final void Function() onTap;
  const CloseButtonWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Icon(
          Icons.close,
          color: Theme.of(context).hintColor,
        ),
      ),
    );
  }
}
