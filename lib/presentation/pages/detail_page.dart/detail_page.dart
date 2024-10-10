import 'package:dostavka/presentation/custom_widget/back_button_widget.dart';
import 'package:dostavka/presentation/custom_widget/close_button_widget.dart';
import 'package:dostavka/presentation/custom_widget/custom_button.dart';
import 'package:dostavka/presentation/custom_widget/custom_error_widget.dart';
import 'package:dostavka/presentation/custom_widget/loading_screen.dart';
import 'package:dostavka/presentation/utility/extension/change_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class DetailPage extends StatelessWidget {
  final int index;

  const DetailPage({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (index == 3) {
        _showPopupDialog(context);
      }
    });
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: Text(
          'Detail Page $index',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        leadingWidth: 48,
        leading: BackButtonWidget(
          onTap: () => context.pop(),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (index == 1) const LoadingScreen(),
            if (index == 2) const CustomErrorWidget(),
          ],
        ),
      ),
    );
  }

  void _showPopupDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            content: Stack(
          children: [
            Positioned(
              right: 0.0,
              top: 0.0,
              child: CloseButtonWidget(
                onTap: () => context.pop(),
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SvgPicture.asset(
                  'assets/icons/bunker_full.svg',
                  width: 60,
                  height: 60,
                ),
                const SizedBox(height: 24),
                Text(context.localizations.ttnTask),
                const SizedBox(height: 12),
                Text(
                  '123123123123123',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 12),
                Text(
                  '1 дільниця',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 12),
                Text(
                  '2 бункер',
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    color: Theme.of(context).highlightColor,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Text('09:15 15.07.2024 '),
                ),
                const SizedBox(height: 24),
                CustomButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  label: context.localizations.confirmCompletion,
                ),
              ],
            ),
          ],
        ));
      },
    );
  }
}
