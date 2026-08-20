import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
class RegisterSupplierScreen extends ConsumerStatefulWidget {
  const RegisterSupplierScreen({super.key});

  @override
  ConsumerState<RegisterSupplierScreen> createState() =>
      _RegisterSupplierScreenState();
}

class _RegisterSupplierScreenState
    extends ConsumerState<RegisterSupplierScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _businessName = TextEditingController();

  String? _firstNameError;
  String? _lastNameError;
  String? _emailError;
  String? _passwordError;
  String? _businessError;

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
    _businessName.dispose();
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
    final businessError = AuthValidators.requiredName(
      _businessName.text,
      'Business name',
    );

    setState(() {
      _firstNameError = firstNameError;
      _lastNameError = lastNameError;
      _emailError = emailError;
      _passwordError = passwordError;
      _businessError = businessError;
    });
    if (firstNameError != null ||
        lastNameError != null ||
        emailError != null ||
        passwordError != null ||
        businessError != null) {
      return;
    }

    await ref
        .read(authNotifierProvider.notifier)
        .registerSupplier(
          email: _email.text,
          password: _password.text,
          firstName: _firstName.text,
          lastName: _lastName.text,
          businessName: _businessName.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final loading = authState is AuthLoading;
    final error = authState is AuthError ? authState.message : null;

    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      if (next is AuthPendingApproval) {
        context.router.replaceAll([const PendingApprovalRoute()]);
      } else if (next is AuthAuthenticated) {
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
              title: 'Register as a supplier',
              subtitle:
                  'Tell us about your business. An admin will review before you can list products.',
            ),
            const SizedBox(height: AppSpacing.xxl),
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
              controller: _businessName,
              label: 'Business name',
              enabled: !loading,
              errorText: _businessError,
              textCapitalization: TextCapitalization.words,
              textInputAction: TextInputAction.done,
              autofillHints: const [AutofillHints.organizationName],
              prefixIcon: const Icon(Icons.storefront_outlined),
              onChanged: (_) {
                if (_businessError != null) {
                  setState(() => _businessError = null);
                }
              },
              onSubmitted: (_) => _submit(),
            ),
            if (error != null) ...[
              const SizedBox(height: AppSpacing.lg),
              AuthErrorBanner(message: error),
            ],
            const SizedBox(height: AppSpacing.xxl),
            AppButton(
              label: 'Submit for approval',
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
