// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(number) => "Section № ${number}";

  static String m1(number) => "Building № ${number}";

  static String m2(number) => "Delivery № ${number}";

  static String m3(number) => "Storage № ${number} is vacant";

  static String m4(number) => "Storage № ${number}";

  static String m5(number) => "Task № ${number}";

  static String m6(number) => "Document № ${number}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "back": MessageLookupByLibrary.simpleMessage("Back"),
        "carLicensePlate":
            MessageLookupByLibrary.simpleMessage("Vehicle license plate"),
        "carNumberNotRegistered": MessageLookupByLibrary.simpleMessage(
            "The vehicle number is not registered. Contact the administrator"),
        "confirmCompletion":
            MessageLookupByLibrary.simpleMessage("Confirm completion"),
        "confirmExecution":
            MessageLookupByLibrary.simpleMessage("Confirm execution"),
        "distributionKKZ":
            MessageLookupByLibrary.simpleMessage("Feed distribution"),
        "email": MessageLookupByLibrary.simpleMessage("Email address"),
        "empty": MessageLookupByLibrary.simpleMessage("Vacant"),
        "enter": MessageLookupByLibrary.simpleMessage("Sign in"),
        "enterPassword":
            MessageLookupByLibrary.simpleMessage("Enter access code"),
        "entrance": MessageLookupByLibrary.simpleMessage("Entry point"),
        "farm": MessageLookupByLibrary.simpleMessage("Section"),
        "farmNumber": m0,
        "finish": MessageLookupByLibrary.simpleMessage("End"),
        "full": MessageLookupByLibrary.simpleMessage("Occupied"),
        "growth": MessageLookupByLibrary.simpleMessage("Growth"),
        "incorrectCode": MessageLookupByLibrary.simpleMessage("Invalid code"),
        "incorrectPassword": MessageLookupByLibrary.simpleMessage(
            "Incorrect access code. Contact the administrator"),
        "kkzDelivery": MessageLookupByLibrary.simpleMessage("Feed delivery"),
        "loadingPleaseWait":
            MessageLookupByLibrary.simpleMessage("Loading, please wait"),
        "next": MessageLookupByLibrary.simpleMessage("Next"),
        "noFeed": MessageLookupByLibrary.simpleMessage("Feed not available"),
        "noServerResponse":
            MessageLookupByLibrary.simpleMessage("No response from server"),
        "password": MessageLookupByLibrary.simpleMessage("Access code"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("Phone"),
        "pointCameraToBarcode": MessageLookupByLibrary.simpleMessage(
            "Point the camera at the barcode"),
        "poultryHouse": MessageLookupByLibrary.simpleMessage("Building"),
        "poultryHouseNumber": m1,
        "pressButtonToScanTtn": MessageLookupByLibrary.simpleMessage(
            "Press the button to start scanning"),
        "required": MessageLookupByLibrary.simpleMessage("Required"),
        "scanTtn": MessageLookupByLibrary.simpleMessage("Scan document"),
        "scanTtnButton": MessageLookupByLibrary.simpleMessage("Scan document"),
        "selectPoultryHouse":
            MessageLookupByLibrary.simpleMessage("Select building"),
        "selectShipment":
            MessageLookupByLibrary.simpleMessage("Select delivery"),
        "selectSilo": MessageLookupByLibrary.simpleMessage("Select storage"),
        "selectTask": MessageLookupByLibrary.simpleMessage("Select task"),
        "shipmentNumber": m2,
        "silo": MessageLookupByLibrary.simpleMessage("Storage"),
        "siloEmpty": m3,
        "siloNumber": m4,
        "start": MessageLookupByLibrary.simpleMessage("Start"),
        "taskNumber": m5,
        "totalActual": MessageLookupByLibrary.simpleMessage("Total volume"),
        "tryAgain": MessageLookupByLibrary.simpleMessage("Retry"),
        "tryRescanTtn":
            MessageLookupByLibrary.simpleMessage("Please rescan the document"),
        "ttnNumber": m6,
        "ttnTask": MessageLookupByLibrary.simpleMessage("Document task")
      };
}
