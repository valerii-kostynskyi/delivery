import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/custom_widget/error_icon.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ErrorIconWidget(
            iconName: 'alert-octagon',
          ),
          const SizedBox(height: 24),
          Text(
            context.localizations.noServerResponse,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          const SizedBox(height: 32),
          Text(
            context.localizations.tryRescanTtn,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          CustomButton(
            label: context.localizations.tryAgain,
            onPressed: () => context.pop(),
          )
        ],
      ),
    );
  }
}
