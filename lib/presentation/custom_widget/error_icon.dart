import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ErrorIconWidget extends StatelessWidget {
  final String iconName;
  final Color? backgroundColor;
  final Color? iconColor;
  const ErrorIconWidget({
    super.key,
    required this.iconName,
    this.backgroundColor,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor ?? Theme.of(context).colorScheme.onError,
      ),
      child: Center(
        child: SizedBox(
          width: 48,
          height: 48,
          child: SvgPicture.asset(
            'assets/icons/$iconName.svg',
            colorFilter: ColorFilter.mode(
              iconColor ?? Theme.of(context).iconTheme.color!,
              BlendMode.srcIn,
            ),
          ),
        ),
      ),
    );
  }
}
