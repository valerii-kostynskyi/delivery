import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/custom_widget/custom_text_field.dart';
import 'package:dostavka/presentation/custom_widget/warning.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:dostavka/presentation/utility/extension/uppercase_text_formater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController carNumberController = TextEditingController();

  bool _obscurePassword = true;
  bool _isLoading = false;
  bool _showWarning = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  Future<void> _onSubmit() async {
    setState(() {
      _isLoading = true;
      _showWarning = false;
    });

    await Future.delayed(const Duration(seconds: 1));

    if (carNumberController.text.length > 8) {
      // TODO <=
      setState(() {
        _isLoading = false;
        _showWarning = true;
      });
    } else {
      setState(() {
        _isLoading = false;
      });
      if (!mounted) return;
      context.go('/scaning-page');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/key.svg',
              width: 40,
              height: 40,
            ),
            const SizedBox(height: 16),
            Text(
              context.localizations.entrance,
              style: Theme.of(context).textTheme.labelLarge,
            ),
            const SizedBox(height: 40),
            CustomTextField(
              inputFormatters: [
                MaskTextInputFormatter(
                  mask: '## 0000 ##',
                  filter: {
                    "#": RegExp(r'[а-яА-ЯіІїЇєЄґҐ]'),
                    "0": RegExp(r'[0-9]')
                  },
                  type: MaskAutoCompletionType.lazy,
                ),
                UpperCaseTextFormatter(),
              ],
              controller: carNumberController,
              labelText: context.localizations.carLicensePlate,
              hintText: '-- ---- --',
            ),
            const SizedBox(height: 16),
            CustomTextField(
              isObscureText: _obscurePassword,
              controller: passwordController,
              labelText: context.localizations.password,
              hintText: context.localizations.enterPassword,
              suffixIcon:
                  _obscurePassword ? Icons.visibility_off : Icons.visibility,
              onSuffixIconTap: _togglePasswordVisibility,
            ),
            const SizedBox(height: 32),
            CustomButton(
              label: context.localizations.enter,
              isLoading: _isLoading,
              onPressed: _onSubmit,
            ),
            if (_showWarning) ...[
              const SizedBox(height: 32),
              const WarningWidget(),
            ],
          ],
        ),
      ),
    );
  }
}
