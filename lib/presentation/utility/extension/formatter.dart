import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

DateFormat getDateFormatter(Locale locale) {
  return DateFormat('dd/MM/yyyy', locale.languageCode);
}

DateFormat getDateTimeFormatter(Locale locale) {
  return DateFormat('dd/MM/yyyy HH:mm:ss', locale.languageCode);
}

String formatLastUpdated(String isoDateTime, Locale locale) {
  try {
    final dateTime = DateTime.parse(isoDateTime);
    final formatter = getDateTimeFormatter(locale);
    return formatter.format(dateTime);
  } catch (e) {
    return isoDateTime;
  }
}

class UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return TextEditingValue(
      text: newValue.text.toUpperCase(),
      selection: newValue.selection,
    );
  }
}

String formatWeight(weightInKg) {
  const double kgToTons = 1000.0;

  if (weightInKg < kgToTons) {
    return '$weightInKg кг';
  } else {
    final tons = weightInKg / kgToTons;
    return '${tons.toStringAsFixed(1)} т';
  }
}

extension CapitalizeExtension on String {
  String capitalizeFirst() {
    return '${this[0].toUpperCase()}${substring(1)}';
  }
}
