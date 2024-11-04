import 'package:feed_delivery/presentation/utility/extension/change_localization.dart';
import 'package:flutter/cupertino.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const CupertinoActivityIndicator(radius: 15),
        const SizedBox(height: 16),
        Text(context.localizations.loadingPleaseWait),
      ],
    );
  }
}
