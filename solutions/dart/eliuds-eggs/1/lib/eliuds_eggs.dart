
class EggCounter {
  String decimalToBinary(int number) {
    if (number == 0) return '0'; // Edge case

    String binary = '';

    while (number > 0) {
      int remainder = number % 2; // How do you get the remainder?
      binary =
          remainder.toString() + binary; // How do you add remainder to binary?

      final newNum = number / 2; // How do you update number for next iteration?
      number = newNum.toInt();
    }

    return binary;
  }

  int count(int entryValue) {
    final binary = decimalToBinary(entryValue);
    final List totalOfOnes = [];
    int totalCount = 0;
    for (final b in binary.split('')) {
      if (b == '1') {
        totalOfOnes.add(b);
      }
    }

    return totalCount = totalOfOnes.length;
  }
}
