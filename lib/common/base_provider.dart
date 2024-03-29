part of 'index.dart';

mixin BaseProvider<T extends ChangeNotifier> on ChangeNotifier {
  bool initLoading = false;

  void setLoading(bool value) {
    initLoading = value;
    notifyListeners();
  }
}
