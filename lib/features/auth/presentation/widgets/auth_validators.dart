/// Client-side checks aligned with NestJS auth DTOs.
abstract final class AuthValidators {
  static final _email = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');

  static String? email(String value) {
    final trimmed = value.trim();
    if (trimmed.isEmpty) return 'Email is required.';
    if (!_email.hasMatch(trimmed)) return 'Enter a valid email address.';
    return null;
  }

  static String? password(String value) {
    if (value.isEmpty) return 'Password is required.';
    if (value.length < 8) return 'Password must be at least 8 characters.';
    return null;
  }

  static String? requiredName(String value, String label) {
    if (value.trim().isEmpty) return '$label is required.';
    return null;
  }

  static String? inviteCode(String value) {
    if (value.trim().isEmpty) return 'Invite code is required.';
    return null;
  }
}
