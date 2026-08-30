/// Maps household size to curated package slugs and display copy.
abstract final class HouseholdSizing {
  static const int minSize = 1;
  static const int maxSize = 8;

  static const List<int> sizeChoices = [1, 2, 3, 4, 5];

  static int clampSize(int size) {
    if (size < minSize) return minSize;
    if (size > maxSize) return maxSize;
    return size;
  }

  static String packageShareSlug(int householdSize) {
    final n = clampSize(householdSize);
    if (n <= 1) return 'bachelor-package';
    if (n == 2) return 'couple-package';
    if (n == 3) return 'family-of-3';
    return 'family-of-5';
  }

  static String sizeLabel(int size) {
    if (size <= 1) return 'Just you';
    if (size >= 5) return '5 or more';
    return '$size people';
  }

  static String sizeSubtitle(int size) {
    if (size <= 1) return 'Pantry and meals sized for one';
    if (size >= 5) return 'Family basket for a larger household';
    return 'Sized for a household of $size';
  }
}
