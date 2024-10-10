import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final bool isLoading;
  final VoidCallback? onPressed;
  final double height;
  final bool isDisabled;
  final String? iconName;

  const CustomButton({
    super.key,
    required this.label,
    this.isLoading = false,
    required this.onPressed,
    this.height = 56,
    this.isDisabled = false,
    this.iconName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isDisabled ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: isDisabled
              ? Theme.of(context).dividerColor
              : Theme.of(context).focusColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          elevation: isDisabled ? 0 : 2,
          padding: const EdgeInsets.symmetric(horizontal: 15),
        ),
        child: isLoading
            ? const Center(child: CupertinoActivityIndicator(radius: 15))
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  if (iconName != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: SvgPicture.asset(
                        'assets/icons/$iconName.svg',
                        width: 22,
                        height: 22,
                        color: Theme.of(context).canvasColor,
                      ),
                    ),
                  Text(
                    label,
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).dialogBackgroundColor),
                  ),
                ],
              ),
      ),
    );
  }
}
