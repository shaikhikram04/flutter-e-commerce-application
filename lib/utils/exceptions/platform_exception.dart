class TPlatformException {
  final String code;

  TPlatformException(this.code);

  String get message {
    switch (code) {
      case 'ERROR_NETWORK_REQUEST_FAILED':
        return 'No internet connection. Please check your connection and try again.';
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'The provided credentials are invalid. Please check your input and try again.';
      case 'too-many-requests':
        return 'Too many requests. Please wait a moment and try again.';
      case 'invalid-argument':
        return 'Invalid arguments provided. Please check your input and try again.';
      case 'invalid-password':
        return 'The provided password is invalid. Please check your password and try again.';
      case 'invalid-phone-number':
        return 'The provided phone number is invalid. Please check your phone number and try again.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support for help.';
      case 'session-cookie-expired':
        return 'The session cookie has expired. Please log in again.';
      case 'uid-already-exists':
        return 'The provided UID is already in use. Please choose a different UID.';
        case 'sign_in_failed':
        return 'Sign in failed. Please check your credentials and try again.';
        case 'network-request-failed':
        return 'No internet connection. Please check your connection and try again.';
        case 'internal-error':
        return 'An internal error occurred. Please try again.';
        case 'invalid-verification-code':
        return 'Invalid verification code. Please enter a valid code';
      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }
}
