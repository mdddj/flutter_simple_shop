part of common;

extension StringExtend on String {
  Future<void> saveToCaceh(String saveKey) async {
    final token = TokenCache();
    token.setValue(saveKey, this);
  }
}
