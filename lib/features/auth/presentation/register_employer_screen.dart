import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../providers/auth_notifier.dart';
import '../providers/auth_state.dart';

class RegisterEmployerScreen extends ConsumerStatefulWidget {
  const RegisterEmployerScreen({super.key});

  @override
  ConsumerState<RegisterEmployerScreen> createState() =>
      _RegisterEmployerScreenState();
}

class _RegisterEmployerScreenState
    extends ConsumerState<RegisterEmployerScreen> {
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  final _companyName = TextEditingController();
  String? _localError;

  @override
  void dispose() {
    _firstName.dispose();
    _lastName.dispose();
    _email.dispose();
    _password.dispose();
    _companyName.dispose();
    super.dispose();
  }

  Future<void> _submit() async {
    setState(() => _localError = null);
    if (_firstName.text.trim().isEmpty ||
        _lastName.text.trim().isEmpty ||
        _email.text.trim().isEmpty ||
        _password.text.length < 8 ||
        _companyName.text.trim().isEmpty) {
      setState(
        () => _localError =
            'Fill all fields. Password must be at least 8 characters.',
      );
      return;
    }
    await ref.read(authNotifierProvider.notifier).registerEmployer(
          email: _email.text,
          password: _password.text,
          firstName: _firstName.text,
          lastName: _lastName.text,
          companyName: _companyName.text,
        );
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authNotifierProvider);
    final loading = authState is AuthLoading;
    final error =
        _localError ?? (authState is AuthError ? authState.message : null);

    return Scaffold(
      appBar: AppBar(title: const Text('Employer registration')),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(AppSpacing.xl),
          children: [
            AppTextField(
              controller: _firstName,
              label: 'First name',
              enabled: !loading,
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _lastName,
              label: 'Last name',
              enabled: !loading,
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _email,
              label: 'Work email',
              keyboardType: TextInputType.emailAddress,
              enabled: !loading,
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _password,
              label: 'Password',
              obscureText: true,
              enabled: !loading,
            ),
            const SizedBox(height: AppSpacing.lg),
            AppTextField(
              controller: _companyName,
              label: 'Company name',
              enabled: !loading,
            ),
            if (error != null) ...[
              const SizedBox(height: AppSpacing.md),
              Text(
                error,
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ],
            const SizedBox(height: AppSpacing.xl),
            AppButton(
              label: 'Create employer account',
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
