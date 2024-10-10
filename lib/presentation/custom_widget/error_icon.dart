import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorIconWidget extends StatelessWidget {
  final String iconName;
  const ErrorIconWidget({
    super.key,
    required this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Theme.of(context).colorScheme.onError,
      ),
      child: Center(
        child: SizedBox(
          width: 48,
          height: 48,
          child: SvgPicture.asset(
            'assets/icons/$iconName.svg',
          ),
        ),
      ),
    );
  }
}
