import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../providers/auth_notifier.dart';
import '../providers/auth_state.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  String? _localError;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() => _localError = null);
    final email = _emailController.text.trim();
    final password = _passwordController.text;
    if (email.isEmpty || password.isEmpty) {
      setState(() => _localError = 'Email and password are required.');
      return;
    }
    await ref.read(authNotifierProvider.notifier).login(
          email: email,
          password: password,
        );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final loading = authState is AuthLoading;
    final errorMessage = _localError ??
        (authState is AuthError ? authState.message : null);

    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      if (next is AuthPendingApproval) {
        context.go('/pending-approval');
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Log in')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.xl),
          children: [
            AppTextField(
              controller: _emailController,
              label: 'Email',
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              enabled: !loading,
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _passwordController,
              label: 'Password',
              obscureText: true,
              textInputAction: TextInputAction.done,
              enabled: !loading,
              onSubmitted: (_) => _submit(),
            ),
            if (errorMessage != null) ...[
              const SizedBox(height: AppSpacing.md),
              Text(
                errorMessage,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
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
              onPressed: loading ? null : () => context.push('/register'),
            ),
          ],
        ),
      ),
    );
  }
}
