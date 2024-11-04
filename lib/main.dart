import 'package:feed_delivery/dostavka_app.dart';
import 'package:feed_delivery/injection.dart';
import 'package:flutter/material.dart';

void main() async {
  initApp().then(
    (_) => runApp(const DostavkaApp()),
  );
}
