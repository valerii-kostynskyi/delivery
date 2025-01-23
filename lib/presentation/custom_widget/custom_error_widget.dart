import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/custom_widget/error_icon.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;
  final bool isTimeOutError;

  const CustomErrorWidget({
    super.key,
    required this.message,
    required this.onRetry,
    required this.isTimeOutError,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            children: [
              BigIconWidget(
                iconName: 'alert-octagon',
                iconColor: theme.colorScheme.error,
              ),
              const SizedBox(height: 24),
              Text(
                message,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(height: 32),
              Text(
                context.localizations.tryRescanTtn,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
            ],
          ),
          CustomButton(
            iconName: 'refresh',
            backgroundColor: theme.colorScheme.secondary,
            label: context.localizations.tryAgain,
            onPressed: onRetry,
          ),
        ],
      ),
    );
  }
}
