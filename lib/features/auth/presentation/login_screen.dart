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
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(authNotifierProvider.notifier).clearError();
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    final emailError = AuthValidators.email(_emailController.text);
    final passwordError = AuthValidators.password(_passwordController.text);
    setState(() {
      _emailError = emailError;
      _passwordError = passwordError;
    });
    if (emailError != null || passwordError != null) return;

    await ref
        .read(authNotifierProvider.notifier)
        .login(
          email: _emailController.text,
          password: _passwordController.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final loading = authState is AuthLoading;
    final errorMessage = authState is AuthError ? authState.message : null;

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
              title: 'Welcome back',
              subtitle: 'Log in with the email your employer invited.',
            ),
            const SizedBox(height: AppSpacing.xxl),
            AppTextField(
              controller: _emailController,
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
              controller: _passwordController,
              enabled: !loading,
              errorText: _passwordError,
              onSubmitted: (_) => _submit(),
              onChanged: (_) {
                if (_passwordError != null) {
                  setState(() => _passwordError = null);
                }
              },
            ),
            if (errorMessage != null) ...[
              const SizedBox(height: AppSpacing.lg),
              AuthErrorBanner(message: errorMessage),
            ],
            const SizedBox(height: AppSpacing.xxl),
            AppButton(
              label: 'Log in',
              expanded: true,
              loading: loading,
              onPressed: loading ? null : _submit,
            ),
            const SizedBox(height: AppSpacing.md),
            AppButton(
              label: 'Create an account',
              expanded: true,
              variant: AppButtonVariant.text,
              onPressed: loading
                  ? null
                  : () => context.navigateTo(const RegisterHubRoute()),
            ),
          ],
        ),
      ),
    );
  }
}
