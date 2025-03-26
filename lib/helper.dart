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
  return ['۰', '۱', '۲', '۳', '٤', '۵', '٦', '۷', '٨', '۹'][number];
}

/// Get the verses by verse mode
List<Verse> getVerses({VerseMode mode = VerseMode.indopak}) {
  return {
    VerseMode.indopak: versesIndopak,
    VerseMode.uthmani: versesUthmani,
    VerseMode.uthmaniTajweed: versesUthmaniTajweed,
    VerseMode.imlaei: versesImlaei,
  }[mode]!;
}

/// Get the translations by type
List<VerseTranslation> getTranslations(
    {TranslationType type = TranslationType.enMASAbdelHaleem}) {
  return {
    TranslationType.enMASAbdelHaleem: enMASAbdelHaleem,
    TranslationType.idIndonesianIslamicAffairsMinistry:
        idIndonesianIslamicAffairsMinistry,
    TranslationType.frMontadaIslamicFoundation: frMontadaIslamicFoundation,
    TranslationType.trDarAlSalamCenter: trDarAlSalamCenter,
  }[type]!;
}
