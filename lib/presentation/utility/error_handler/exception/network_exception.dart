import 'package:delivery/presentation/utility/error_handler/exception/base_exception.dart';
import 'package:delivery/presentation/utility/error_handler/exception/exception_type.dart';

class NetworkException extends BaseException {
  final String message;

  const NetworkException(
    this.message,
  ) : super(
          ExceptionType.networkException,
        );
}
