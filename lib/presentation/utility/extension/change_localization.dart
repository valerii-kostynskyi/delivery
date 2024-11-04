import 'package:feed_delivery/generated/l10n.dart';
import 'package:flutter/material.dart';

extension ChangeLocalizations on BuildContext {
  S get localizations {
    final localizations = S.of(this);
    return localizations;
  }
}
