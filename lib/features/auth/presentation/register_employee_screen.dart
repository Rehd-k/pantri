import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/router/app_router.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../providers/auth_notifier.dart';
import '../providers/auth_state.dart';
import 'widgets/auth_password_field.dart';
import 'widgets/auth_scaffold.dart';
import 'widgets/auth_validators.dart';

@RoutePage()
class RegisterEmployeeScreen extends ConsumerStatefulWidget {
  const RegisterEmployeeScreen({super.key});

  @override
  ConsumerState<RegisterEmployeeScreen> createState() =>
      _RegisterEmployeeScreenState();
}

class _RegisterEmployeeScreenState
    extends ConsumerState<RegisterEmployeeScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _inviteCode = TextEditingController();
  final _phone = TextEditingController();

  String? _firstNameError;
  String? _lastNameError;
  String? _emailError;
  String? _passwordError;
  String? _inviteError;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(authNotifierProvider.notifier).clearError();
    });
  }

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _password.dispose();
    _inviteCode.dispose();
    _phone.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final firstNameError = AuthValidators.requiredName(
      _firstName.text,
      'First name',
    );
    final lastNameError = AuthValidators.requiredName(
      _lastName.text,
      'Last name',
    );
    final emailError = AuthValidators.email(_email.text);
    final passwordError = AuthValidators.password(_password.text);
    final inviteError = AuthValidators.inviteCode(_inviteCode.text);

    setState(() {
      _firstNameError = firstNameError;
      _lastNameError = lastNameError;
      _emailError = emailError;
      _passwordError = passwordError;
      _inviteError = inviteError;
    });
    if (firstNameError != null ||
        lastNameError != null ||
        emailError != null ||
        passwordError != null ||
        inviteError != null) {
      return;
    }

    await ref
        .read(authNotifierProvider.notifier)
        .registerEmployee(
          email: _email.text,
          password: _password.text,
          firstName: _firstName.text,
          lastName: _lastName.text,
          inviteCode: _inviteCode.text,
          phone: _phone.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final loading = authState is AuthLoading;
    final error = authState is AuthError ? authState.message : null;

    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      if (next is AuthAuthenticated) {
        context.router.replaceAll([roleHomeRoute(next.user.role)]);
      }
    });

    return AuthScaffold(
      child: AutofillGroup(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(
            AppSpacing.xl,
            AppSpacing.md,
            AppSpacing.xl,
            AppSpacing.xl,
          ),
          children: [
            const AuthScreenHeader(
              title: 'Join your company',
              subtitle:
                  'Use the invite your employer sent. Your email must match the invite.',
            ),
            const SizedBox(height: AppSpacing.xxl),
            AppTextField(
              controller: _inviteCode,
              label: 'Invite code',
              hint: 'From your employer',
              enabled: !loading,
              errorText: _inviteError,
              textCapitalization: TextCapitalization.characters,
              autocorrect: false,
              enableSuggestions: false,
              textInputAction: TextInputAction.next,
              prefixIcon: const Icon(Icons.vpn_key_outlined),
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[A-Za-z0-9]')),
                _UpperCaseTextFormatter(),
              ],
              onChanged: (_) {
                if (_inviteError != null) setState(() => _inviteError = null);
              },
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _firstName,
              label: 'First name',
              enabled: !loading,
              errorText: _firstNameError,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.next,
              autofillHints: const [AutofillHints.givenName],
              prefixIcon: const Icon(Icons.person_outline_rounded),
              onChanged: (_) {
                if (_firstNameError != null) {
                  setState(() => _firstNameError = null);
                }
              },
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _lastName,
              label: 'Last name',
              enabled: !loading,
              errorText: _lastNameError,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.next,
              autofillHints: const [AutofillHints.familyName],
              prefixIcon: const Icon(Icons.person_outline_rounded),
              onChanged: (_) {
                if (_lastNameError != null) {
                  setState(() => _lastNameError = null);
                }
              },
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _email,
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              autofillHints: const [AutofillHints.email],
              autocorrect: false,
              enabled: !loading,
              errorText: _emailError,
              prefixIcon: const Icon(Icons.mail_outline_rounded),
              onChanged: (_) {
                if (_emailError != null) setState(() => _emailError = null);
              },
            ),
            const SizedBox(height: AppSpacing.lg),
            AuthPasswordField(
              controller: _password,
              hint: 'At least 8 characters',
              enabled: !loading,
              isNewPassword: true,
              errorText: _passwordError,
              textInputAction: TextInputAction.next,
              onChanged: (_) {
                if (_passwordError != null) {
                  setState(() => _passwordError = null);
                }
              },
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _phone,
              label: 'Phone (optional)',
              hint: 'Required if the invite was issued to a number',
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.telephoneNumber],
              enabled: !loading,
              prefixIcon: const Icon(Icons.phone_outlined),
              onSubmitted: (_) => _submit(),
            ),
            if (error != null) ...[
              const SizedBox(height: AppSpacing.lg),
              AuthErrorBanner(message: error),
            ],
            const SizedBox(height: AppSpacing.xxl),
            AppButton(
              label: 'Join company',
              expanded: true,
              loading: loading,
              onPressed: loading ? null : _submit,
            ),
          ],
        ),
      ),
    );
  }
}

class _UpperCaseTextFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    return newValue.copyWith(text: newValue.text.toUpperCase());
  }
}
