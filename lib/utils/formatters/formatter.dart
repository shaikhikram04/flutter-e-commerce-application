import 'package:intl/intl.dart';

class IFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en_US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}}';
    }

    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    //* Remove non-dight character from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    //* Extract our country code from digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    //* Add the remaining digit with proper formatting
    final formatedNumber = StringBuffer();
    formatedNumber.write('($countryCode)');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 || countryCode == '+1') {
        groupLength = 3;
      }

      int end = i + groupLength;
      formatedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formatedNumber.write(' ');
      }
      i = end;
    }

    return formatedNumber.toString();
  }
}
