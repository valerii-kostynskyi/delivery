import 'package:dostavka/presentation/utility/error_handler/exception/exception_type.dart';

abstract class BaseException implements Exception {
  final ExceptionType type;

  const BaseException(
    this.type,
  );
}
