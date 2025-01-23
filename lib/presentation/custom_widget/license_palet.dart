import 'package:flutter/material.dart';

class LicensePlate extends StatelessWidget {
  final String carNumber;

  const LicensePlate({
    super.key,
    required this.carNumber,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final formattedCarNumber = _formatCarNumber(carNumber);
    return Container(
      width: 295,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: theme.primaryColor,
          width: 2,
        ),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
                )),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    width: 16,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.yellow,
                    ),
                  ),
                  const SizedBox(height: 2),
                  const Text(
                    'UA',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  formattedCarNumber,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatCarNumber(String carNumber) {
    if (carNumber.length != 8) {
      return carNumber;
    }
    final part1 = carNumber.substring(0, 2);
    final part2 = carNumber.substring(2, 6);
    final part3 = carNumber.substring(6, 8);
    return '$part1 $part2 $part3';
  }
}
