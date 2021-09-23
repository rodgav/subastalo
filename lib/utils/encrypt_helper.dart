import 'package:encrypt/encrypt.dart';

class EncryptHelper {
  static final _key = Key.fromUtf8('subastaloAppWeb2');
  final _iv = IV.fromLength(16);
  final _encrypter = Encrypter(AES(_key));

  String? encrypt(String input) {
    if (input.isEmpty) return null;
    final encrypterText = _encrypter.encrypt(input, iv: _iv);
    return encrypterText.base64;
  }

  String? decrypt(String input) {
    if (input.isEmpty) return null;
    final decrypterText = _encrypter.decrypt64(input, iv: _iv);
    return decrypterText;
  }
}
