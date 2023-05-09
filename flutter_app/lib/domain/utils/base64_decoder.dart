import 'dart:convert';

class Base64Decoder {
  static Codec<String, String> stringToBase64 = utf8.fuse(base64);

  static String decode(String input) => stringToBase64.decode(input);
}
