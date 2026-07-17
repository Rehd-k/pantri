import 'package:flutter/material.dart';

import '../theme/app_spacing.dart';

/// Interactive surface card. Prefer only when the container supports interaction
/// or groups actionable content.
class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(AppSpacing.lg),
    this.margin,
  });

  final Widget child;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final content = Padding(padding: padding, child: child);

    return Card(
      margin: margin ?? EdgeInsets.zero,
      child: onTap == null
          ? content
          : InkWell(onTap: onTap, child: content),
    );
  }
}
