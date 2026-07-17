import '../domain/auth_user.dart';

/// Explicit auth session states for routing and UI.
sealed class AuthState {
  const AuthState();
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class AuthAuthenticated extends AuthState {
  const AuthAuthenticated(this.user);

  final AuthUser user;
}

class AuthUnauthenticated extends AuthState {
  const AuthUnauthenticated();
}

class AuthPendingApproval extends AuthState {
  const AuthPendingApproval({this.message});

  final String? message;
}

class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;
}
