// Package imports:
import 'package:encrypt/encrypt.dart';

/// 加解密工具类
class AesUtil {
  static const String myKey = '76CAA1C88F7F8D1D';
  static const String myIv = '91129048100F0494';

  /// aes 加密
  static String encryptAESCbc128WithPadding7(String val) {
    try {
      final encrypter = Encrypter(AES(Key.fromUtf8(myKey), mode: AESMode.cbc));
      final encrypted = encrypter.encrypt(val, iv: IV.fromUtf8(myIv));
      return encrypted.base64;
    } catch (err) {
      return val;
    }
  }

  /// aes 解密
  //AES解密
  static String aesDecrypt(String encrypted) {
    try {
      final key = Key.fromUtf8(myKey);
      final iv = IV.fromUtf8(myIv);
      final encrypter = Encrypter(AES(key, mode: AESMode.cbc));
      final decrypted = encrypter.decrypt16(encrypted, iv: iv);
      return decrypted;
    } catch (err) {
      return encrypted;
    }
  }
}
