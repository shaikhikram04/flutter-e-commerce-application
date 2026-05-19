class TFirebaseException {
  final String code;

  TFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'network-request-failed':
        return 'No internet connection. Please check your connection and try again.';
      case 'unknown':
        return 'An unknown error occurred. Please try again.';
      case 'invalid-custom-token':
        return 'The custom token format is incorrect. Please check the documentation.';
      case 'custom-token-mismatch':
        return 'The custom token corresponds to a different audience.';
      case 'user-disabled':
        return 'This user has been disabled. Please contact support for help.';
      case 'user-not-found':
        return 'No user found with this email. Please check your email and try again.';
      case 'invalid-email':
        return 'The email address is badly formatted. Please check your email and try again.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';
      case 'provider-already-linked':
        return 'This provider is already linked to the user.';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support for help.';
      case 'invalid-credential':
        return 'The credential is invalid or expired. Please try again.';
      case 'invalid-verification-code':
        return 'The verification code is invalid. Please check the code and try again.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid. Please check the ID and try again.';
      case 'capcha-check-failed':
        return 'Captcha verification failed. Please try again.';
      case 'keychain-error':
        return 'A keychain error occurred. Please try again.';
      case 'internal-error':
        return 'An internal error occurred. Please try again.';
      case 'invalid-app-credential':
        return 'The app credential is invalid. Please try again.';
      case 'app-not-authorized':
        return 'This app is not authorized to use Firebase Authentication. Please check your configuration.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again before retrying';
      case 'quota-exceeded':
        return 'The quota for this operation has been exceeded. Please try again later.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'missing-iframe-start':
        return 'The email template is missing the iframe start tag.';
      case 'missing-iframe-end':
        return 'The email template is missing the iframe end tag.';
      case 'missing-iframe-src':
        return 'The email template is missing the iframe src attribute.';
      case 'auth-domain-config-required':
        return 'The domain of the continue URL is not whitelisted. Please whitelist the domain in the Firebase Console.';
      case 'missing-app-credential':
        return 'The phone verification request is missing an application verifier. The reCAPTCHA token response is required.';
      case 'session-cookie-expired':
        return 'The session cookie has expired. Please sign in again.';
      case 'uid-already-exists':
        return 'The UID already exists. Please choose a different UID.';
      case 'web-storage-unsupported':
        return 'This browser does not support web storage. Please use a different browser.';
      case 'app-deleted':
        return 'The application has been deleted. Please contact support for help.';
      case 'user-token-mismatch':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
      case 'invalid-message-payload':
        return 'The message payload is invalid. Please check the documentation and try again.';
      case 'invalid-sender':
        return 'The sender ID is invalid. Please check the documentation and try again.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please check the email and try again.';
      case 'missing-action-code':
        return 'The action code is missing. Please check the documentation and try again.';
      case 'user-token-expired':
        return 'The user\'s credential has expired. The user must sign in again.';
      case 'INVALID_LOGIN_CREDENTIALS':
        return 'The supplied auth credential is malformed or has expired.';
      case 'expire-action-code':
        return 'The action code has expired. Please try again.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please check the code and try again.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a different user account.';
      default:
        return 'An unexpected error occurred. Please try again.';
    }
  }
}
