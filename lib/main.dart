import 'package:dostavka/dostavka_app.dart';
import 'package:dostavka/injection.dart';
import 'package:flutter/material.dart';

void main() async {
  initApp().then(
    (_) => runApp(const DostavkaApp()),
  );
}
