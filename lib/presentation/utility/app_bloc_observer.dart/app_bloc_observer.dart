import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppBlocObserver extends BlocObserver {
  final Set<BlocBase> activeBlocs = {};

  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    debugPrint('Event Added: ${bloc.runtimeType}, $event');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    debugPrint('State Changed: ${bloc.runtimeType}, $change');
  }

  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    activeBlocs.add(bloc);
    _logActiveBlocs();
    debugPrint(
        'Bloc Created: ${bloc.runtimeType}, Total Active: ${activeBlocs.length}');
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    activeBlocs.remove(bloc);
    _logActiveBlocs();
    debugPrint(
        'Bloc Closed: ${bloc.runtimeType}, Total Active: ${activeBlocs.length}');
  }

  void _logActiveBlocs() {
    for (final bloc in activeBlocs) {
      log('Active Bloc: ${bloc.runtimeType}');
    }
  }
}
