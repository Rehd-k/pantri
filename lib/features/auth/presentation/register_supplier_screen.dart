import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_spacing.dart';
import '../../../core/widgets/app_button.dart';
import '../../../core/widgets/app_text_field.dart';
import '../providers/auth_notifier.dart';
import '../providers/auth_state.dart';

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
  String? _localError;

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
    setState(() => _localError = null);
    if (_firstName.text.trim().isEmpty ||
        _lastName.text.trim().isEmpty ||
        _email.text.trim().isEmpty ||
        _password.text.length < 8 ||
        _businessName.text.trim().isEmpty) {
      setState(
        () => _localError =
            'Fill all fields. Password must be at least 8 characters.',
      );
      return;
    }
    await ref.read(authNotifierProvider.notifier).registerSupplier(
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
    final error =
        _localError ?? (authState is AuthError ? authState.message : null);

    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      if (next is AuthPendingApproval) {
        context.go('/pending-approval');
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Supplier registration')),
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
              label: 'Email',
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
              controller: _businessName,
              label: 'Business name',
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
