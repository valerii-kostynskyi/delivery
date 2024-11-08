import 'package:feed_delivery/presentation/blocks/bloc/login_bloc.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_button.dart';
import 'package:feed_delivery/presentation/custom_widget/custom_text_field.dart';
import 'package:feed_delivery/presentation/custom_widget/warning.dart';
import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:feed_delivery/presentation/utility/extension/uppercase_text_formater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController carNumberController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginBloc(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SingleChildScrollView(
              child: BlocConsumer<LoginBloc, LoginState>(
                listener: (context, state) {
                  if (state is Success) {
                    context.go('/scaning-page');
                  } else if (state is Error) {
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(state.message)));
                  }
                },
                builder: (context, state) {
                  final isLoading = state is Loading;
                  final showWarning = state is Error;

                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 120),
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
                        isObscureText: true,
                        controller: passwordController,
                        labelText: context.localizations.password,
                        hintText: context.localizations.enterPassword,
                      ),
                      const SizedBox(height: 32),
                      CustomButton(
                        label: context.localizations.enter,
                        isLoading: isLoading,
                        onPressed: () {
                          final carNumber = carNumberController.text;
                          final password = passwordController.text;
                          context.read<LoginBloc>().add(
                                LoginEvent.submit(carNumber, password),
                              );
                        },
                      ),
                      const SizedBox(height: 32),
                      if (showWarning) ...[
                        const WarningWidget(),
                      ],
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}



// class LoginPage extends StatefulWidget {
//   const LoginPage({super.key});

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController carNumberController = TextEditingController();

//   bool _obscurePassword = true;
//   bool _isLoading = false;
//   bool _showWarning = false;

//   void _togglePasswordVisibility() {
//     setState(() {
//       _obscurePassword = !_obscurePassword;
//     });
//   }

//   Future<void> _onSubmit() async {
//     setState(() {
//       _isLoading = true;
//       _showWarning = false;
//     });

//     await Future.delayed(const Duration(seconds: 1));

//     // TODO <=
//     if (carNumberController.text.length > 8) {
//       setState(() {
//         _isLoading = false;
//         _showWarning = true;
//       });
//     } else {
//       setState(() {
//         _isLoading = false;
//       });
//       if (!mounted) return;
//       context.go('/scaning-page');
//     }
//   }

//   Future<void> _onSubmit_2() async {
//     if (!mounted) return;
//     context.go('/sector-info-page');
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 16),
//           child: SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 const SizedBox(height: 120),
//                 SvgPicture.asset(
//                   'assets/icons/key.svg',
//                   width: 40,
//                   height: 40,
//                 ),
//                 const SizedBox(height: 16),
//                 Text(
//                   context.localizations.entrance,
//                   style: Theme.of(context).textTheme.labelLarge,
//                 ),
//                 const SizedBox(height: 40),
//                 CustomTextField(
//                   inputFormatters: [
//                     MaskTextInputFormatter(
//                       mask: '## 0000 ##',
//                       filter: {
//                         "#": RegExp(r'[а-яА-ЯіІїЇєЄґҐ]'),
//                         "0": RegExp(r'[0-9]')
//                       },
//                       type: MaskAutoCompletionType.lazy,
//                     ),
//                     UpperCaseTextFormatter(),
//                   ],
//                   controller: carNumberController,
//                   labelText: context.localizations.carLicensePlate,
//                   hintText: '-- ---- --',
//                 ),
//                 const SizedBox(height: 16),
//                 CustomTextField(
//                   isObscureText: _obscurePassword,
//                   controller: passwordController,
//                   labelText: context.localizations.password,
//                   hintText: context.localizations.enterPassword,
//                   suffixIcon: _obscurePassword
//                       ? Icons.visibility_off
//                       : Icons.visibility,
//                   onSuffixIconTap: _togglePasswordVisibility,
//                 ),
//                 const SizedBox(height: 32),
//                 CustomButton(
//                   label: context.localizations.enter,
//                   isLoading: _isLoading,
//                   onPressed: _onSubmit,
//                 ),
//                 const SizedBox(height: 32),
//                 CustomButton(
//                   label: context.localizations.enter + '2 водій',
//                   isLoading: _isLoading,
//                   onPressed: _onSubmit_2,
//                 ),
//                 if (_showWarning) ...[
//                   const SizedBox(height: 32),
//                   const WarningWidget(),
//                 ],
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
