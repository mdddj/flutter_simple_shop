part of 'index.dart';

class PrivacyCache extends CacheBase<bool> {
  @override
  String get boxName => "privacy-cache";
  String keyName = "isAgree";

  ///是否已经同意了隐私政策
  Future<bool> isAgree() async {
    final result = await getValue(keyName, defaultValue: false);
    return result ?? false;
  }

  ///更新状态
  Future<void> changePrivacyState(bool value) async {
    await setValue(keyName, value);
  }
}
