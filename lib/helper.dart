import 'package:alquran/data/dart/chapter.dart';
import 'package:alquran/data/dart/juz.dart';
import 'package:alquran/data/dart/verses/indopak.dart';

bool isOutOfRange(int value, int min, int max) => value < min || value > max;

bool isJuzOutOfRange(int value) {
  return isOutOfRange(value, 1, juzs.length);
}

bool isChapterOutOfRange(int value) {
  return isOutOfRange(value, 1, chapters.length);
}

bool isVerseOutOfRange(int value) {
  return isOutOfRange(value, 1, verses_INDOPAK.length);
}

String toArabicNumber(int number) {
  switch (number) {
    case 1:
      return "١";
    case 2:
      return "٢";
    case 3:
      return "٣";
    case 4:
      return "٤";
    case 5:
      return "٥";
    case 6:
      return "٦";
    case 7:
      return "٧";
    case 8:
      return "٨";
    case 9:
      return "٩";
    case 0:
      return "٠";
    default:
      return "";
  }
}
