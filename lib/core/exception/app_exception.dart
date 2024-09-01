sealed class Result<T> {}

class RESULT<T> extends Result<T> {
  final T data;
  RESULT(this.data);
}

class EXCEPTION<T> extends Result<T> {
  final CommonException exception;
  EXCEPTION(this.exception);
}

/// Exception
class CommonException implements Exception {
  final String? message;
  final dynamic data;

  CommonException({
    required this.message,
    this.data,
  });

  @override
  String toString() {
    return 'ApiException{message: $message}';
  }
}
