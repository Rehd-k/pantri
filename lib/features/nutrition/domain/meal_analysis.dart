import '../../home/domain/employee_dashboard.dart';
import 'nutrition_models.dart';

class MealMicroNutrient {
  const MealMicroNutrient({
    required this.label,
    required this.amountLabel,
    required this.dvPercent,
    required this.icon,
    required this.tone,
  });

  final String label;
  final String amountLabel;
  final double dvPercent;
  final String icon;
  final MealMicroTone tone;
}

enum MealMicroTone { secondary, tertiary, primary, error }

class MealAnalysisTip {
  const MealAnalysisTip({
    required this.title,
    required this.body,
    required this.icon,
  });

  final String title;
  final String body;
  final String icon;
}

class MealIngredientRow {
  const MealIngredientRow({
    required this.name,
    required this.subtitle,
    required this.badge,
    required this.isPrimary,
  });

  final String name;
  final String subtitle;
  final String badge;
  final bool isPrimary;
}

class MealAnalysis {
  const MealAnalysis({
    required this.title,
    required this.description,
    required this.mealSlot,
    required this.dateLabel,
    required this.tags,
    required this.healthGrade,
    required this.gradeCaption,
    required this.calories,
    required this.proteinG,
    required this.carbsG,
    required this.fatG,
    required this.proteinPercent,
    required this.carbsPercent,
    required this.fatPercent,
    required this.micros,
    required this.tips,
    required this.ingredients,
    required this.creditLimitKobo,
    required this.creditUsedKobo,
    required this.creditAvailableKobo,
  });

  final String title;
  final String description;
  final String mealSlot;
  final String dateLabel;
  final List<String> tags;
  final String healthGrade;
  final String gradeCaption;
  final int calories;
  final int proteinG;
  final int carbsG;
  final int fatG;
  final int proteinPercent;
  final int carbsPercent;
  final int fatPercent;
  final List<MealMicroNutrient> micros;
  final List<MealAnalysisTip> tips;
  final List<MealIngredientRow> ingredients;
  final int creditLimitKobo;
  final int creditUsedKobo;
  final int creditAvailableKobo;

  double get creditUtilization {
    if (creditLimitKobo <= 0) return 0;
    return (creditUsedKobo / creditLimitKobo).clamp(0.0, 1.0);
  }

  static MealAnalysis from({
    required MealPlanItem item,
    required MealPlanDay day,
    required MealPlanDetail plan,
    HealthProfile? profile,
    CreditSummary? credit,
  }) {
    final facts = item.nutritionFacts;
    final calories = _parseFact(facts, const [
      'Calories',
      'calories',
      'kcal',
      'Energy',
    ], fallback: 480);
    final proteinG = _parseFact(facts, const [
      'Protein',
      'protein',
    ], fallback: 28);
    final carbsG = _parseFact(facts, const [
      'Carbohydrates',
      'Carbs',
      'carbohydrates',
      'carbs',
    ], fallback: 45);
    final fatG = _parseFact(facts, const ['Fat', 'fat', 'Total Fat'], fallback: 16);

    final macroCalories = (proteinG * 4) + (carbsG * 4) + (fatG * 9);
    final denom = macroCalories <= 0 ? 1 : macroCalories;
    final proteinPercent = ((proteinG * 4) / denom * 100).round().clamp(0, 100);
    final carbsPercent = ((carbsG * 4) / denom * 100).round().clamp(0, 100);
    final fatPercent = (100 - proteinPercent - carbsPercent).clamp(0, 100);

    final fiberG = _parseFact(facts, const [
      'Fiber',
      'Dietary Fiber',
      'fiber',
    ], fallback: 8);
    final sodiumMg = _parseFact(facts, const [
      'Sodium',
      'sodium',
    ], fallback: 380);
    final sugarG = _parseFact(facts, const [
      'Sugar',
      'Added Sugar',
      'sugars',
    ], fallback: 4);
    final ironMg = _parseFactDouble(facts, const [
      'Iron',
      'iron',
    ], fallback: 3.5);

    final micros = [
      MealMicroNutrient(
        label: 'Dietary Fiber',
        amountLabel: '${fiberG}g',
        dvPercent: (fiberG / 28 * 100).clamp(0, 100),
        icon: 'eco',
        tone: MealMicroTone.secondary,
      ),
      MealMicroNutrient(
        label: 'Sodium',
        amountLabel: '${sodiumMg}mg',
        dvPercent: (sodiumMg / 2300 * 100).clamp(0, 100),
        icon: 'water_drop',
        tone: MealMicroTone.tertiary,
      ),
      MealMicroNutrient(
        label: 'Added Sugar',
        amountLabel: '${sugarG}g',
        dvPercent: (sugarG / 50 * 100).clamp(0, 100),
        icon: 'icecream',
        tone: MealMicroTone.primary,
      ),
      MealMicroNutrient(
        label: 'Iron',
        amountLabel: '${ironMg.toStringAsFixed(1)}mg',
        dvPercent: (ironMg / 18 * 100).clamp(0, 100),
        icon: 'fitness_center',
        tone: MealMicroTone.error,
      ),
    ];

    final tags = <String>{
      ...item.tags.where((t) => t.trim().isNotEmpty),
    };
    if (proteinG >= 30) tags.add('High Protein');
    if (fiberG >= 8) tags.add('Heart Healthy');
    if (fatG <= 20 && proteinG >= 20) tags.add('Omega-3 Rich');
    if (tags.isEmpty) tags.addAll(['Balanced', 'Catalog Matched']);

    final proteinDensity = calories <= 0 ? 0 : proteinG / calories;
    final grade = switch (proteinDensity) {
      >= 0.08 when fiberG >= 8 => 'A',
      >= 0.05 => 'B',
      _ => 'C',
    };
    final gradeCaption = switch (grade) {
      'A' => 'An Excellent Choice',
      'B' => 'A Solid Choice',
      _ => 'Room to Optimize',
    };

    final tips = <MealAnalysisTip>[
      if (item.rationale.trim().isNotEmpty)
        MealAnalysisTip(
          title: 'Plan insight',
          body: item.rationale.trim(),
          icon: 'verified',
        ),
      if (fiberG < 10)
        const MealAnalysisTip(
          title: 'Boost your Fiber score',
          body:
              'Add a cup of leafy greens like spinach or kale to raise fiber without changing the flavor much.',
          icon: 'add_circle',
        )
      else
        const MealAnalysisTip(
          title: 'Excellent Fiber Profile',
          body:
              'This meal already covers a meaningful share of your daily fiber target.',
          icon: 'eco',
        ),
      MealAnalysisTip(
        title: 'Excellent Lipid Profile',
        body: fatG <= 20
            ? 'Fat stays moderate at ${fatG}g while keeping protein density high for your goals.'
            : 'Consider a lighter dressing alternative next time to trim fat without losing protein.',
        icon: 'verified',
      ),
    ];

    final recipe = item.recipe;
    final slot = item.mealSlot.toLowerCase();
    final ingredients = recipe != null && recipe.ingredients.isNotEmpty
        ? recipe.ingredients
            .map(
              (ing) => MealIngredientRow(
                name: ing.productName,
                subtitle: ing.isShort
                    ? 'SHORT IN PANTRY'
                    : '${ing.quantity} ${ing.measureUnitLabel ?? 'units'}',
                badge: ing.isShort ? 'Low' : 'Ready',
                isPrimary: !ing.isShort,
              ),
            )
            .toList()
        : day.items
            .where((row) => row.mealSlot.toLowerCase() == slot)
            .map((row) {
              final name = row.productName?.trim().isNotEmpty == true
                  ? row.productName!
                  : (row.requestedProductName.trim().isNotEmpty
                        ? row.requestedProductName
                        : row.title);
              return MealIngredientRow(
                name: name,
                subtitle: 'PANTRY INGREDIENT',
                badge: 'Recipe',
                isPrimary: true,
              );
            })
            .toList();

    final limit = credit?.creditLimitKobo ?? 0;
    final available = credit?.availableKobo ?? 0;
    final used = (limit - available).clamp(0, limit);

    final now = DateTime.now();
    final weekday = _weekdayName(now.weekday);
    final month = _monthName(now.month);

    return MealAnalysis(
      title: item.title,
      description: item.rationale.trim().isNotEmpty
          ? item.rationale.trim()
          : 'Personalized meal built from your Pantri catalog and health profile.',
      mealSlot: _titleCase(item.mealSlot),
      dateLabel: '$weekday, $month ${now.day} • ${_titleCase(item.mealSlot)}',
      tags: tags.take(4).toList(),
      healthGrade: grade,
      gradeCaption: gradeCaption,
      calories: calories,
      proteinG: proteinG,
      carbsG: carbsG,
      fatG: fatG,
      proteinPercent: proteinPercent,
      carbsPercent: carbsPercent,
      fatPercent: fatPercent,
      micros: micros,
      tips: tips.take(3).toList(),
      ingredients: ingredients,
      creditLimitKobo: limit,
      creditUsedKobo: used,
      creditAvailableKobo: available,
    );
  }

  static int _parseFact(
    Map<String, String> facts,
    List<String> keys, {
    required int fallback,
  }) {
    for (final key in keys) {
      final raw = facts[key];
      if (raw == null) continue;
      final match = RegExp(r'[\d.]+').firstMatch(raw);
      if (match == null) continue;
      final value = double.tryParse(match.group(0)!);
      if (value != null) return value.round();
    }
    return fallback;
  }

  static double _parseFactDouble(
    Map<String, String> facts,
    List<String> keys, {
    required double fallback,
  }) {
    for (final key in keys) {
      final raw = facts[key];
      if (raw == null) continue;
      final match = RegExp(r'[\d.]+').firstMatch(raw);
      if (match == null) continue;
      final value = double.tryParse(match.group(0)!);
      if (value != null) return value;
    }
    return fallback;
  }

  static String _titleCase(String value) {
    if (value.isEmpty) return value;
    return value[0].toUpperCase() + value.substring(1).toLowerCase();
  }

  static String _weekdayName(int weekday) {
    const names = [
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday',
      'Sunday',
    ];
    return names[(weekday - 1).clamp(0, 6)];
  }

  static String _monthName(int month) {
    const names = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec',
    ];
    return names[(month - 1).clamp(0, 11)];
  }
}
