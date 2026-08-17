import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../core/theme/app_spacing.dart';

Future<void> shareNutritionCard(
  GlobalKey boundaryKey, {
  required String fileName,
  required String subject,
}) async {
  final boundary =
      boundaryKey.currentContext?.findRenderObject() as RenderRepaintBoundary?;
  if (boundary == null) return;
  final image = await boundary.toImage(pixelRatio: 3);
  final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
  if (bytes == null) return;
  final directory = await getTemporaryDirectory();
  final file = File('${directory.path}/$fileName.png');
  await file.writeAsBytes(bytes.buffer.asUint8List(), flush: true);
  await Share.shareXFiles([XFile(file.path)], subject: subject);
}

class NutritionShareCard extends StatelessWidget {
  const NutritionShareCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.metrics,
    this.highlight,
  });

  final String title;
  final String subtitle;
  final Map<String, String> metrics;
  final String? highlight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppSpacing.xl),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF18392B), Color(0xFF2E7D55)],
        ),
        borderRadius: BorderRadius.all(Radius.circular(24)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.eco_outlined, color: Colors.white),
              SizedBox(width: AppSpacing.sm),
              Text(
                'PANTRI NUTRITION',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  letterSpacing: 1.1,
                ),
              ),
            ],
          ),
          const SizedBox(height: AppSpacing.xl),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.w900,
            ),
          ),
          const SizedBox(height: AppSpacing.xs),
          Text(subtitle, style: const TextStyle(color: Color(0xFFD8EDDF))),
          if (highlight != null) ...[
            const SizedBox(height: AppSpacing.lg),
            Text(
              highlight!,
              style: Theme.of(context).textTheme.displaySmall?.copyWith(
                color: const Color(0xFFFFD166),
                fontWeight: FontWeight.w900,
              ),
            ),
          ],
          const SizedBox(height: AppSpacing.lg),
          Wrap(
            spacing: AppSpacing.sm,
            runSpacing: AppSpacing.sm,
            children: metrics.entries
                .map(
                  (entry) => Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSpacing.md,
                      vertical: AppSpacing.sm,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.12),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Text(
                      '${entry.key}\n${entry.value}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                )
                .toList(growable: false),
          ),
        ],
      ),
    );
  }
}
