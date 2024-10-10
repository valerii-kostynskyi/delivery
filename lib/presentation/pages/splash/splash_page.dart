import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/custom_widget/custom_text_field.dart';
import 'package:dostavka/presentation/custom_widget/phone_text_input.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            PhoneTextField(
              controller: phoneController,
              labelText: 'Номер телфону',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              controller: emailController,
              labelText: context.localizations.password,
            ),
            const SizedBox(height: 16),
            CustomButton(label: context.localizations.enter, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
