part of pages;

class CategoryNotificationStreamUtil {
  CategoryNotificationStreamUtil._internal() {
    init();
  }

  factory CategoryNotificationStreamUtil() => _instance;

  static final CategoryNotificationStreamUtil _instance =
      CategoryNotificationStreamUtil._internal();

  StreamController? _controller;
  Stream? _stream;

  static CategoryNotificationStreamUtil get instance => _instance;
  Stream? get changeStream => _stream;
  StreamController? get ctrl => _controller;

  void disposeStream() => _controller?.close();

  void init() {
    _controller ??= StreamController.broadcast();
    _stream ??= _controller!.stream;
    if (_controller!.isClosed) {
      _controller = null;
      _stream = null;
      init();
    }
  }

  void notifiy(Notification notification) {
    init();
    _controller!.sink.add(notification);
  }
}
