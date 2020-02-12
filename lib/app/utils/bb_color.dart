import 'dart:ui';

extension BBColor on Color {
  static from(String hexString, {int alpha = 100}) {
    if (hexString?.isEmpty ?? true) {
      return null;
    }

    hexString = hexString.replaceAll("#", "");
    // if (hexString.length == 6) {
    //   hexString = "ff" + hexString;
    // }

    try {
      return Color(int.tryParse(hexString, radix: 16)).withOpacity(alpha / 100);
    } on Exception {
      return null;
    }
  }
}
