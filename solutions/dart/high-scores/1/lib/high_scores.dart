class HighScores {
  final List<int> records;

  HighScores(this.records);

  List<int> get scores => records;
  int latest() => records[records.length - 1];
  int personalBest() {
    int bestScore = 0;
    // n+1 operation
    for (int i = 0; i < records.length; i++) {
      if (records[i] >= bestScore) {
        bestScore = records[i];
      }
    }
    return bestScore;
  }

  List<int> personalTopThree() {
    // [23,43,32,2,54]
    // sort them

    int med = 0;
    int small = 0;
    int large = 0;
    for (int i = 0; i < records.length; i++) {
      final score = records[i];
      if (score > large) {
        small = med;
        med = large;
        large = score;
      } else if (score > med) {
        small = med;
        med = score;
      } else if (score > small) {
        small = score;
      }
    }
    final result = <int>[large];
    if (records.length > 1) result.add(med);
    if (records.length > 2) result.add(small);

    return result;
  }
}

