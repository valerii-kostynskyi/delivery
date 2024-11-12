// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign in`
  String get enter {
    return Intl.message(
      'Sign in',
      name: 'enter',
      desc: '',
      args: [],
    );
  }

  /// `Access code`
  String get password {
    return Intl.message(
      'Access code',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Email address`
  String get email {
    return Intl.message(
      'Email address',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phoneNumber {
    return Intl.message(
      'Phone',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Scan document`
  String get scanTtn {
    return Intl.message(
      'Scan document',
      name: 'scanTtn',
      desc: '',
      args: [],
    );
  }

  /// `Scan document`
  String get scanTtnButton {
    return Intl.message(
      'Scan document',
      name: 'scanTtnButton',
      desc: '',
      args: [],
    );
  }

  /// `Point the camera at the barcode`
  String get pointCameraToBarcode {
    return Intl.message(
      'Point the camera at the barcode',
      name: 'pointCameraToBarcode',
      desc: '',
      args: [],
    );
  }

  /// `Press the button to start scanning`
  String get pressButtonToScanTtn {
    return Intl.message(
      'Press the button to start scanning',
      name: 'pressButtonToScanTtn',
      desc: '',
      args: [],
    );
  }

  /// `Feed delivery`
  String get kkzDelivery {
    return Intl.message(
      'Feed delivery',
      name: 'kkzDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Select storage`
  String get selectSilo {
    return Intl.message(
      'Select storage',
      name: 'selectSilo',
      desc: '',
      args: [],
    );
  }

  /// `Section № {number}`
  String farmNumber(Object number) {
    return Intl.message(
      'Section № $number',
      name: 'farmNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Document № {number}`
  String ttnNumber(Object number) {
    return Intl.message(
      'Document № $number',
      name: 'ttnNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Vacant`
  String get empty {
    return Intl.message(
      'Vacant',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Occupied`
  String get full {
    return Intl.message(
      'Occupied',
      name: 'full',
      desc: '',
      args: [],
    );
  }

  /// `Entry point`
  String get entrance {
    return Intl.message(
      'Entry point',
      name: 'entrance',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get tryAgain {
    return Intl.message(
      'Retry',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Vehicle license plate`
  String get carLicensePlate {
    return Intl.message(
      'Vehicle license plate',
      name: 'carLicensePlate',
      desc: '',
      args: [],
    );
  }

  /// `Enter access code`
  String get enterPassword {
    return Intl.message(
      'Enter access code',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `The vehicle number is not registered. Contact the administrator`
  String get carNumberNotRegistered {
    return Intl.message(
      'The vehicle number is not registered. Contact the administrator',
      name: 'carNumberNotRegistered',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect access code. Contact the administrator`
  String get incorrectPassword {
    return Intl.message(
      'Incorrect access code. Contact the administrator',
      name: 'incorrectPassword',
      desc: '',
      args: [],
    );
  }

  /// `Loading, please wait`
  String get loadingPleaseWait {
    return Intl.message(
      'Loading, please wait',
      name: 'loadingPleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `No response from server`
  String get noServerResponse {
    return Intl.message(
      'No response from server',
      name: 'noServerResponse',
      desc: '',
      args: [],
    );
  }

  /// `Please rescan the document`
  String get tryRescanTtn {
    return Intl.message(
      'Please rescan the document',
      name: 'tryRescanTtn',
      desc: '',
      args: [],
    );
  }

  /// `Invalid code`
  String get incorrectCode {
    return Intl.message(
      'Invalid code',
      name: 'incorrectCode',
      desc: '',
      args: [],
    );
  }

  /// `Confirm completion`
  String get confirmCompletion {
    return Intl.message(
      'Confirm completion',
      name: 'confirmCompletion',
      desc: '',
      args: [],
    );
  }

  /// `Document task`
  String get ttnTask {
    return Intl.message(
      'Document task',
      name: 'ttnTask',
      desc: '',
      args: [],
    );
  }

  /// `Storage`
  String get silo {
    return Intl.message(
      'Storage',
      name: 'silo',
      desc: '',
      args: [],
    );
  }

  /// `Section`
  String get farm {
    return Intl.message(
      'Section',
      name: 'farm',
      desc: '',
      args: [],
    );
  }

  /// `Feed distribution`
  String get distributionKKZ {
    return Intl.message(
      'Feed distribution',
      name: 'distributionKKZ',
      desc: '',
      args: [],
    );
  }

  /// `Select task`
  String get selectTask {
    return Intl.message(
      'Select task',
      name: 'selectTask',
      desc: '',
      args: [],
    );
  }

  /// `Task № {number}`
  String taskNumber(Object number) {
    return Intl.message(
      'Task № $number',
      name: 'taskNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Total volume`
  String get totalActual {
    return Intl.message(
      'Total volume',
      name: 'totalActual',
      desc: '',
      args: [],
    );
  }

  /// `Select building`
  String get selectPoultryHouse {
    return Intl.message(
      'Select building',
      name: 'selectPoultryHouse',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `End`
  String get finish {
    return Intl.message(
      'End',
      name: 'finish',
      desc: '',
      args: [],
    );
  }

  /// `Growth`
  String get growth {
    return Intl.message(
      'Growth',
      name: 'growth',
      desc: '',
      args: [],
    );
  }

  /// `Delivery № {number}`
  String shipmentNumber(Object number) {
    return Intl.message(
      'Delivery № $number',
      name: 'shipmentNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Select delivery`
  String get selectShipment {
    return Intl.message(
      'Select delivery',
      name: 'selectShipment',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Building`
  String get poultryHouse {
    return Intl.message(
      'Building',
      name: 'poultryHouse',
      desc: '',
      args: [],
    );
  }

  /// `Building № {number}`
  String poultryHouseNumber(Object number) {
    return Intl.message(
      'Building № $number',
      name: 'poultryHouseNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Storage № {number}`
  String siloNumber(Object number) {
    return Intl.message(
      'Storage № $number',
      name: 'siloNumber',
      desc: '',
      args: [number],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Confirm execution`
  String get confirmExecution {
    return Intl.message(
      'Confirm execution',
      name: 'confirmExecution',
      desc: '',
      args: [],
    );
  }

  /// `Storage № {number} is vacant`
  String siloEmpty(Object number) {
    return Intl.message(
      'Storage № $number is vacant',
      name: 'siloEmpty',
      desc: '',
      args: [number],
    );
  }

  /// `Back`
  String get back {
    return Intl.message(
      'Back',
      name: 'back',
      desc: '',
      args: [],
    );
  }

  /// `Feed not available`
  String get noFeed {
    return Intl.message(
      'Feed not available',
      name: 'noFeed',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'uk'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
