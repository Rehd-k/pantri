import 'package:flutter/material.dart';

import '../../../../core/theme/app_spacing.dart';
import '../../../auth/domain/auth_user.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
    required this.user,
    this.onProfileTap,
    this.onNotificationsTap,
    this.onCreditAccountTap,
  });

  final AuthUser? user;
  final VoidCallback? onProfileTap;
  final VoidCallback? onNotificationsTap;
  final VoidCallback? onCreditAccountTap;

  String get _initials {
    if (user == null) return '?';
    final f = user!.firstName.isNotEmpty ? user!.firstName[0] : '';
    final l = user!.lastName.isNotEmpty ? user!.lastName[0] : '';
    final value = '$f$l'.toUpperCase();
    return value.isEmpty ? '?' : value;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        InkWell(
          onTap: onProfileTap,
          customBorder: const CircleBorder(),
          child: CircleAvatar(
            radius: 22,
            backgroundColor: colorScheme.tertiaryContainer,
            foregroundColor: colorScheme.onTertiaryContainer,
            child: Text(
              _initials,
              style: textTheme.titleSmall?.copyWith(fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const SizedBox(width: AppSpacing.md),
        Expanded(
          child: Text(
            'Pantri',
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w800,
              color: colorScheme.tertiary,
            ),
          ),
        ),
        IconButton(
          tooltip: 'Credit account',
          onPressed: onCreditAccountTap,
          icon: Icon(
            Icons.credit_score_outlined,
            color: colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
        IconButton(
          onPressed: onNotificationsTap,
          icon: Icon(
            Icons.notifications_none_rounded,
            color: colorScheme.onSurface.withValues(alpha: 0.7),
          ),
        ),
      ],
    );
  }
}
