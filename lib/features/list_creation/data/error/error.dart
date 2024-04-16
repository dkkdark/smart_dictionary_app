class InvalidResponse implements Exception {
  final String message;
  InvalidResponse(this.message);
}

class InvalidInsert implements Exception {
  final String message;
  InvalidInsert(this.message);
}

class InvalidGet implements Exception {
  final String message;
  InvalidGet(this.message);
}
