// ignore_for_file: unused_local_variable

import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableBytes(double number) {
    final formatterNumber = NumberFormat.compactCurrency(
    decimalDigits: 0,
    symbol: '',
    ).format(number);

    return formatterNumber;
  }
}
