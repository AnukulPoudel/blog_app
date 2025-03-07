/// We created our own expetion cause if we encapsulate additional information about the error, such as error codes, stack traces, or context-specific data. This can be useful for logging, debugging, or providing more detailed error messages to the user.
class ServerException implements Exception {
  final String message;
  const ServerException(this.message);
}
