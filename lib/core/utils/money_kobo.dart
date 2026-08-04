/// Integer kobo helpers for Nigerian Naira display and input.
abstract final class MoneyKobo {
  static String formatNaira(int kobo) {
    final naira = kobo / 100;
    final whole = naira.floor();
    final fraction = (kobo % 100).abs();
    final wholeStr = _withThousands(whole);
    if (fraction == 0) {
      return '₦$wholeStr';
    }
    return '₦$wholeStr.${fraction.toString().padLeft(2, '0')}';
  }

  /// Parses user-entered naira amount (e.g. "5800" or "5,800.50") to kobo.
  static int? parseNairaToKobo(String input) {
    final cleaned = input.trim().replaceAll(',', '').replaceAll('₦', '');
    if (cleaned.isEmpty) return null;
    final value = double.tryParse(cleaned);
    if (value == null || value < 0) return null;
    return (value * 100).round();
  }

  static String _withThousands(int value) {
    final abs = value.abs().toString();
    final buf = StringBuffer();
    for (var i = 0; i < abs.length; i++) {
      if (i > 0 && (abs.length - i) % 3 == 0) {
        buf.write(',');
      }
      buf.write(abs[i]);
    }
    return value < 0 ? '-$buf' : buf.toString();
  }
}
