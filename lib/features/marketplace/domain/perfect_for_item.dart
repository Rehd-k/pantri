// ignore_for_file: invalid_annotation_target

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'perfect_for_item.freezed.dart';
part 'perfect_for_item.g.dart';

@freezed
abstract class PerfectForItem with _$PerfectForItem {
  const factory PerfectForItem({
    required String title,
    required String description,
    required String imageUrl,
  }) = _PerfectForItem;

  factory PerfectForItem.fromJson(Map<String, dynamic> json) {
    final title = _perfectForString(json, const [
      'title',
      'name',
      'meal',
      'label',
    ]);
    return PerfectForItem(
      title: title,
      description: _perfectForString(json, const [
        'description',
        'subtitle',
        'body',
      ]),
      imageUrl: _perfectForString(json, const [
        'imageUrl',
        'image',
        'image_url',
        'photoUrl',
      ]),
    );
  }
}

/// Reads meals attached to a product. Accepts a list of objects, a list of
/// meal names, or a JSON string of either shape.
List<PerfectForItem> perfectForFromJson(Object? raw) {
  final value = _decodePerfectFor(raw);
  if (value is! List) return const <PerfectForItem>[];

  final items = <PerfectForItem>[];
  for (final entry in value) {
    if (entry is String) {
      final title = entry.trim();
      if (title.isEmpty) continue;
      items.add(PerfectForItem(title: title, description: '', imageUrl: ''));
      continue;
    }
    if (entry is! Map) continue;
    final item = PerfectForItem.fromJson(Map<String, dynamic>.from(entry));
    if (item.title.trim().isEmpty) continue;
    items.add(item);
  }
  return items;
}

Object? _decodePerfectFor(Object? raw) {
  if (raw is! String) return raw;
  final text = raw.trim();
  if (text.isEmpty) return const <dynamic>[];
  try {
    return jsonDecode(text);
  } catch (_) {
    return <String>[text];
  }
}

String _perfectForString(Map<String, dynamic> json, List<String> keys) {
  for (final key in keys) {
    final value = json[key];
    if (value == null) continue;
    final text = value.toString().trim();
    if (text.isNotEmpty && text != 'null') return text;
  }
  return '';
}
