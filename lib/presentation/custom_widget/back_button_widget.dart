import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  final void Function() onTap;
  const BackButtonWidget({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: Theme.of(context).hintColor,
              width: 1.0,
            ),
          ),
          alignment: Alignment.center,
          child: Icon(
            Icons.arrow_back,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
