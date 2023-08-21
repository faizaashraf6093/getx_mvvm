class AppException implements Exception {
  final String? message;
  final String prefix;

  AppException(this.message, this.prefix);

  @override
  String toString() {
    return '$prefix $message';
  }
}

class InternetException extends AppException {
  InternetException(String? message) : super(message, 'No Internet');
}


class RequestTimeOut extends AppException {
  RequestTimeOut(String? message) : super(message, 'Request Time Out');
}
class ServerError extends AppException {
  ServerError(String? message) : super(message, 'Internal Server Error');
}
