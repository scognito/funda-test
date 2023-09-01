class NetworkException implements Exception {
  final int errorCode;
  final String message;

  NetworkException(
    this.errorCode,
    this.message,
  );
}
