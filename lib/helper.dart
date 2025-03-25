import 'package:alfurqan/constant.dart';
import 'package:alfurqan/data/dart/chapter.dart';
import 'package:alfurqan/data/dart/juz.dart';
import 'package:alfurqan/data/dart/translations/en_mas_abdel_haleem.dart';
import 'package:alfurqan/data/dart/translations/fr_montada_islamic_foundation.dart';
import 'package:alfurqan/data/dart/translations/id_indonesian_islamic_affairs_ministry.dart';
import 'package:alfurqan/data/dart/translations/tr_dar_al_salam_center.dart';
import 'package:alfurqan/data/dart/types.dart';
import 'package:alfurqan/data/dart/verses/imlaei.dart';
import 'package:alfurqan/data/dart/verses/indopak.dart';
import 'package:alfurqan/data/dart/verses/uthmani.dart';
import 'package:alfurqan/data/dart/verses/uthmani_tajweed.dart';

/// Check if the value is out of range
bool isOutOfRange(int value, int min, int max) => value < min || value > max;

/// Check if the juz number is out of range
bool isJuzOutOfRange(int value) {
  return isOutOfRange(value, 1, juzs.length);
}

/// Check if the chapter number is out of range
bool isChapterOutOfRange(int value) {
  return isOutOfRange(value, 1, chapters.length);
}

/// Check if the verse number is out of range
bool isVerseOutOfRange(int value) {
  return isOutOfRange(value, 1, versesIndopak.length);
}

/// Convert number to arabic number
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

/// Get the verses by verse mode
List<Verse> getVerses({VerseMode mode = VerseMode.indopak}) {
  List<Verse> verses;
  switch (mode) {
    case VerseMode.indopak:
      verses = versesIndopak;
      break;
    case VerseMode.uthmani:
      verses = versesUthmani;
      break;
    case VerseMode.uthmaniTajweed:
      verses = versesUthmaniTajweed;
      break;
    case VerseMode.imlaei:
      verses = versesImlaei;
      break;
  }

  return verses;
}

/// Get the translations by type
List<VerseTranslation> getTranslations(
    {TranslationType type = TranslationType.enMASAbdelHaleem}) {
  switch (type) {
    case TranslationType.enMASAbdelHaleem:
      return enMASAbdelHaleem;
    case TranslationType.idIndonesianIslamicAffairsMinistry:
      return idIndonesianIslamicAffairsMinistry;
    case TranslationType.frMontadaIslamicFoundation:
      return frMontadaIslamicFoundation;
    case TranslationType.trDarAlSalamCenter:
      return trDarAlSalamCenter;
  }
}
