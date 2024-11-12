// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'uk';

  static String m0(number) => "Секція № ${number}";

  static String m1(number) => "Корпус № ${number}";

  static String m2(number) => "Перевезення № ${number}";

  static String m3(number) => "Резервуар № ${number} вільний";

  static String m4(number) => "Резервуар № ${number}";

  static String m5(number) => "Завдання № ${number}";

  static String m6(number) => "Документ № ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "back": MessageLookupByLibrary.simpleMessage("Назад"),
        "carLicensePlate":
            MessageLookupByLibrary.simpleMessage("Номерний знак авто"),
        "carNumberNotRegistered": MessageLookupByLibrary.simpleMessage(
            "Вказаний номер авто не зареєстрований. Зверніться до адміністратора"),
        "confirmCompletion":
            MessageLookupByLibrary.simpleMessage("Підтвердити завершення"),
        "confirmExecution":
            MessageLookupByLibrary.simpleMessage("Підтвердити виконання"),
        "distributionKKZ":
            MessageLookupByLibrary.simpleMessage("Розподіл комбікорму"),
        "email": MessageLookupByLibrary.simpleMessage("Електронна адреса"),
        "empty": MessageLookupByLibrary.simpleMessage("Вільний"),
        "enter": MessageLookupByLibrary.simpleMessage("Вхід"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Введіть код доступу"),
        "entrance": MessageLookupByLibrary.simpleMessage("Вхідна точка"),
        "farm": MessageLookupByLibrary.simpleMessage("Секція"),
        "farmNumber": m0,
        "finish": MessageLookupByLibrary.simpleMessage("Закінчити"),
        "full": MessageLookupByLibrary.simpleMessage("Заповнений"),
        "growth": MessageLookupByLibrary.simpleMessage("Зростання"),
        "incorrectCode": MessageLookupByLibrary.simpleMessage("Код невірний"),
        "incorrectPassword": MessageLookupByLibrary.simpleMessage(
            "Невірний код. Зверніться до адміністратора"),
        "kkzDelivery":
            MessageLookupByLibrary.simpleMessage("Доставка комбікорму"),
        "loadingPleaseWait": MessageLookupByLibrary.simpleMessage(
            "Завантаження, будь ласка, зачекайте"),
        "next": MessageLookupByLibrary.simpleMessage("Далі"),
        "noFeed": MessageLookupByLibrary.simpleMessage("Корм відсутній"),
        "noServerResponse":
            MessageLookupByLibrary.simpleMessage("Немає відповіді від сервера"),
        "password": MessageLookupByLibrary.simpleMessage("Код доступу"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Телефон"),
        "pointCameraToBarcode": MessageLookupByLibrary.simpleMessage(
            "Наведіть камеру на штрих-код"),
        "poultryHouse": MessageLookupByLibrary.simpleMessage("Корпус"),
        "poultryHouseNumber": m1,
        "pressButtonToScanTtn": MessageLookupByLibrary.simpleMessage(
            "Натисніть кнопку для сканування документа"),
        "required": MessageLookupByLibrary.simpleMessage("Необхідно"),
        "scanTtn": MessageLookupByLibrary.simpleMessage("Скануйте документ"),
        "scanTtnButton":
            MessageLookupByLibrary.simpleMessage("Сканувати документ"),
        "selectPoultryHouse":
            MessageLookupByLibrary.simpleMessage("Виберіть корпус"),
        "selectShipment":
            MessageLookupByLibrary.simpleMessage("Виберіть перевезення"),
        "selectSilo":
            MessageLookupByLibrary.simpleMessage("Виберіть резервуар"),
        "selectTask": MessageLookupByLibrary.simpleMessage("Виберіть завдання"),
        "shipmentNumber": m2,
        "silo": MessageLookupByLibrary.simpleMessage("Резервуар"),
        "siloEmpty": m3,
        "siloNumber": m4,
        "start": MessageLookupByLibrary.simpleMessage("Почати"),
        "taskNumber": m5,
        "totalActual": MessageLookupByLibrary.simpleMessage("Загальний обсяг"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Повторити спробу"),
        "tryRescanTtn": MessageLookupByLibrary.simpleMessage(
            "Спробуйте ще раз відсканувати документ"),
        "ttnNumber": m6,
        "ttnTask": MessageLookupByLibrary.simpleMessage("Завдання документа")
      };
}
