import 'dart:math';

class AtbashCipher {
  //** the encrypt of each of letter is the last letter of corresponding place for example for 3rd letter its encrypt is the 3rd letter from backward or the end
  //the rules are like this
  // if number unchange,
  //the encoded is alway lowercase
  //and i think decoding and encoding would be the same for example if encode a becomes z and vice versa if decode z it becomes a
  //psudocode:
  //Map<String Encode, String Decode >  letters -> mapp all letters to their corresponding chipere
  //split the give word
  //IF NUMBER ? NO CHANGE
  //IF Include Punctuation exclude it
  //encode each letter
  //group them in 5 letters together
  //and the same appraoches maybe for decoding in another method

  static List<String> letters = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
  ];
  Map<String, String> chipereLetters = {
    for (int i = 0; i < letters.length; i++)
      letters[i]: letters[(letters.length - 1) - i],
  };
  final numbers = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  String encode(String word) {
    final List<String> cleaned = word.toLowerCase().trim().split('');
    final List<String> result = [];

    for (int i = 0; i < cleaned.length; i++)
      if (letters.contains(cleaned[i])) {
        result.add(chipereLetters[cleaned[i]]!);
      } else if (numbers.contains(cleaned[i])) {
        result.add(cleaned[i]);
      } else {
        result.remove(cleaned[i]);
      }

    String sds = result.join();

    String grouped = '';
    for (int i = 0; i < sds.length; i += 5) {
      grouped = grouped + sds.substring(i, min(i + 5, sds.length)) + ' ';

      // sds = result[i].substring(0, i);
    }

    return grouped.trim();
  }

  String decode(String word) {
    final List<String> cleaned = word.toLowerCase().trim().split('');
    final List<String> result = [];

    for (int i = 0; i < cleaned.length; i++)
      if (letters.contains(cleaned[i])) {
        result.add(chipereLetters[cleaned[i]]!);
      } else if (numbers.contains(cleaned[i])) {
        result.add(cleaned[i]);
      } else {
        result.remove(cleaned[i]);
      }

    return result.join();
  }
}

  // String encode(String word) {
  //   final String newWord = word.toLowerCase().trim();
  //   List<dynamic> allWords = newWord.split('');

  //   // final List<String> listChiperes = [];
  //   for (int i = 0; i < allWords.length; i++)
  //     if (allWords[i] is int) {
  //       // no change
  //       allWords[i] = allWords[i];
  //     } else {
  //       final chipher = chipereLetters[allWords[i]] ?? '~';
  //       allWords[i] = chipher!;
  //     }
  //   final chiphereWord = allWords.join();
  //   return chiphereWord;
  // }

