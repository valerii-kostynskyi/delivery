import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/custom_widget/error_icon.dart';
import 'package:dostavka/presentation/custom_widget/license_palet.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaningPage extends StatelessWidget {
  const ScaningPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: theme.scaffoldBackgroundColor,
        title: Text(
          context.localizations.kkzDelivery,
          style: theme.textTheme.titleMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 36),
              BigIconWidget(
                iconName: 'truck',
                backgroundColor: theme.colorScheme.onSurface,
                iconColor: theme.focusColor,
              ),
              const SizedBox(height: 16),
              const LicensePlate(adminNumber: 'AA 1234 AA'),
              const SizedBox(height: 36),
              Divider(thickness: 1, color: Theme.of(context).hintColor),
              const SizedBox(height: 36),
              Text(
                context.localizations.pressButtonToScanTtn,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              CustomButton(
                label: 'перший водій',
                onPressed: () => context.go('/main-page'),
                height: 120,
                iconName: 'scan',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
