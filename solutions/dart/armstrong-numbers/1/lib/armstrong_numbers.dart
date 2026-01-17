// if we split the number , and rise to the power of length and sum it up and becomes equall to intial vaule
import 'dart:math';

class ArmstrongNumbers {
  bool isArmstrongNumber(String number) {
    final splittedNum = number.split('');
    final length = splittedNum.length;
    BigInt sum = BigInt.from(0);
    // if it's single digit Number it's already a armstrong
    if (length <= 1) {
      return true;
    }
    for (var element in splittedNum) {
      final tempNum = BigInt.parse(element);
      if (tempNum != BigInt.from(0)) {
        sum = sum + multiply(tempNum, length);
      }
      ;
    }
    return sum == BigInt.parse(number);
  }

  // It's big calculations , should do not use int
  BigInt multiply(BigInt num, int times) {
    BigInt result = BigInt.from(1);
    for (int i = 0; i < times; i++) {
      result = result * num;
    }
    return result;
  }
}
