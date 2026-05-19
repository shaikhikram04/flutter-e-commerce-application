class TFirebaseAuthException {
  final String code;

  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'invalid-email':
        return 'The email address provided is invalid. Please enter a valid email.';
      case 'user-disabled':
        return 'This user account has been disabled. Please contact support for help.';
      case 'user-not-found':
        return 'Invalid login details. User not found.';
      case 'wrong-password':
        return 'Incorrect password. Please check your password and try again.';
      case 'email-already-in-use':
        return 'The email address is already registered. Please use a different email';
      case 'operation-not-allowed':
        return 'This operation is not allowed. Please contact support for help.';
      case 'weak-password':
        return 'The password is too weak. Please choose a stronger password.';
      case 'invalid-verification-code':
        return 'The verification code is invalid. Please enter a valid code.';
      case 'invalid-verification-id':
        return 'The verification ID is invalid. Please request a new verification code.';
      case 'quota-exceeded':
        return 'Quota exceeded. Please try again later.';
      case 'email-already-exists':
        return 'The email address is already exists. Please use a different email.';
      case 'provider-already-linked':
        return 'The account is already linked with another provider.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Please log in again.';
      case 'credential-already-in-use':
        return 'The credential is associated with a different user account.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email but different sign-in credentials.';
      case 'expired-action-code':
        return 'The action code has expired. Please request a new one.';
      case 'invalid-action-code':
        return 'The action code is invalid. Please request a new one.';
      case 'missing-action-code':
        return 'The action code is missing. Please request a new one.';
      case 'user-token-expired':
        return 'The user\'s credential is no longer valid. The user must sign in again.';
      case 'invalid-credential':
        return 'The credential is invalid. Please check the information and try again.';
      case 'user-token-revoked':
        return 'The user\'s credential has been revoked. Please sign in again.';
      case 'invalid-message-payload':
        return 'The message payload is invalid. Please check the information and try again.';
      case 'invalid-sender':
        return 'The sender ID is invalid. Please check the information and try again.';
      case 'invalid-recipient-email':
        return 'The recipient email address is invalid. Please check the information and try again.';
      case 'missing-iframe-start':
        return 'The start of the iframe is missing. Please try again.';
      default:
        return 'An unexpected error occurred. Please try again later.';
    }
  }
}
