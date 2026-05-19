class TFormatException {
  final String message;

  TFormatException([
    this.message =
        'An unexpected format error occurred. Please check your input',
  ]);

  factory TFormatException.fromMessage(String message) {
    return TFormatException(message);
  }

  String get formatedMessage => message;

  factory TFormatException.fromCode(String code) {
    switch (code) {
      case 'invalid-format':
        return TFormatException(
            'The provided data format is invalid. Please check your input and try again.');
      case 'missing-field':
        return TFormatException(
            'A required field is missing. Please ensure all fields are filled out correctly.');
      case 'unexpected-type':
        return TFormatException(
            'An unexpected data type was encountered. Please check your input and try again.');
      case 'invalid-email-format':
        return TFormatException(
            'The email address format is invalid. Please check your email and try again.');
      case 'invalid-phone-number-format':
        return TFormatException(
            'The phone number format is invalid. Please check your phone number and try again.');
      case 'invalid-date-format':
        return TFormatException(
            'The date format is invalid. Please check your date input and try again.');
      case 'invalid-url-format':
        return TFormatException(
            'The URL format is invalid. Please check your URL and try again.');
      case 'invalid-credit-card-format':
        return TFormatException(
            'The credit card format is invalid. Please check your credit card information and try again.');
      case 'invalid-numeric-format':
        return TFormatException(
            'The numeric format is invalid. Please check your input and try again.');
      default:
        return TFormatException();
    }
  }
}
