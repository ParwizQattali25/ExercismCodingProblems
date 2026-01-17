
class Etl {
  Map<String, int> transform(Map<String, List<String>> legacy) {
    //New map with new format
    Map<String, int> newMap = {};

    for (final form in legacy.entries) {
      final scores = form.key;
      final letters = form.value;

      for (final ab in letters)
        newMap.addAll({ab.toLowerCase(): int.parse(scores)});
    }

    return newMap;
  }
}
