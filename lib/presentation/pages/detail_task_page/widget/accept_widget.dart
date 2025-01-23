import 'package:delivery/data/models/detail_task_silo_model.dart/detail_task_silo_model.dart';
import 'package:delivery/presentation/custom_widget/custom_button.dart';
import 'package:delivery/presentation/custom_widget/error_icon.dart';
import 'package:delivery/presentation/utility/extension/change_localization.dart';
import 'package:delivery/presentation/utility/extension/formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AcceptWidget extends StatelessWidget {
  final DetailTaskSiloModel selectedSilo;
  final VoidCallback onConfirmPressed;
  final VoidCallback onBackPressed;

  const AcceptWidget({
    super.key,
    required this.selectedSilo,
    required this.onConfirmPressed,
    required this.onBackPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      children: [
        Expanded(
          child: Column(
            children: [
              const SizedBox(height: 24),
              BigIconWidget(
                iconName: 'check',
                backgroundColor: theme.colorScheme.onSurface,
                iconColor: theme.focusColor,
              ),
              const SizedBox(height: 24),
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: theme.colorScheme.onSurface,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          selectedSilo.name,
                          style: theme.textTheme.labelMedium?.copyWith(
                            color: theme.primaryColor,
                            fontSize: 20,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 16,
                              height: 16,
                              child: SvgPicture.asset(
                                'assets/icons/arrow-down.svg',
                                colorFilter: ColorFilter.mode(
                                  theme.focusColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              formatWeight(selectedSilo.storageAmount),
                              style: theme.textTheme.labelLarge?.copyWith(
                                color: theme.focusColor,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    if (selectedSilo.feed != null) Text(selectedSilo.feed!),
                  ],
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          onPressed: onConfirmPressed,
          label: context.localizations.confirmExecution,
        ),
        const SizedBox(height: 12),
        TextButton(
          onPressed: onBackPressed,
          child: Text(
            context.localizations.back,
            style: theme.textTheme.bodyLarge,
          ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
