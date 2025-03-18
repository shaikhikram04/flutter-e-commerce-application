class IValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) return 'Email is required';

    //* regular expression for email validator
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]{2,4}$)');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }

    return null;
  }

  static String? validatePassord(String? value) {
    if (value == null || value.isEmpty) return 'Password is required';

    //* Check for minimum password length
    if (value.length < 6) {
      return 'Password must me atleast 6 character long';
    }

    //* Check for uppercase letter
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain atleast one uppercase letter';
    }

    //* check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain atleast one number';
    }

    //* check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'Password must contain atleast one special character';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) return 'Phone number is required';

    //* regular expression for phone number validator (asuume 10 digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{10}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (10 digit required).';
    }

    return null;
  }
}
