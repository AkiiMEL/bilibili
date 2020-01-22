
import 'dart:ui';

extension BBColor on Color {
  static from(String hexString) {
    if (hexString == null) return null;

    hexString = hexString.replaceAll("#", "");
    if (hexString.length == 6) hexString = "ff" + hexString;
    try {
      return Color(int.tryParse(hexString, radix: 16));
    } on Exception {
      return null;
    }
  }
}