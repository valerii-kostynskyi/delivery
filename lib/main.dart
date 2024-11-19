import 'package:delivery/dostavka_app.dart';
import 'package:delivery/injection.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';

void main() async {
  initApp().then((_) => runApp(
        const OverlaySupport.global(child: DostavkaApp()),
      ));
}
