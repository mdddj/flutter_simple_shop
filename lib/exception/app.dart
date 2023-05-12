

    class AppRuntimeException implements Exception {
  final String msg;
         AppRuntimeException(this.msg);

  @override
  String toString() {
    return msg;
  }
}