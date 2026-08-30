import 'package:flutter/material.dart';

typedef LifestyleOption = (String value, String title, String subtitle, IconData icon);

const kLifestyleOptions = <LifestyleOption>[
  ('EVERYTHING', 'Everything', 'No restrictions', Icons.restaurant_outlined),
  ('VEGETARIAN', 'Vegetarian', 'No meat, includes eggs/dairy', Icons.egg_outlined),
  ('VEGAN', 'Vegan', 'Plant-based only', Icons.eco_outlined),
  ('KETO', 'Keto', 'High fat, low carb', Icons.lunch_dining_outlined),
  ('MIXED', 'Mixed', 'Household does not share one diet', Icons.groups_outlined),
];

List<LifestyleOption> lifestylesForHousehold(int householdSize) {
  if (householdSize <= 1) {
    return kLifestyleOptions.where((item) => item.$1 != 'MIXED').toList();
  }
  return kLifestyleOptions;
}
