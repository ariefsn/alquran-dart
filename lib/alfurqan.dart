// ignore_for_file: constant_identifier_names

import 'package:alfurqan/data/dart/chapter.dart';
import 'package:alfurqan/data/dart/juz.dart';
import 'package:alfurqan/data/dart/translations/enMASAbdelHaleem.dart';
import 'package:alfurqan/data/dart/translations/frMontadaIslamicFoundation.dart';
import 'package:alfurqan/data/dart/translations/idIndonesianIslamicAffairsMinistry.dart';
import 'package:alfurqan/data/dart/translations/trDarAlSalamCenter.dart';
import 'package:alfurqan/data/dart/types.dart';
import 'package:alfurqan/data/dart/verses/imlaei.dart';
import 'package:alfurqan/data/dart/verses/indopak.dart';
import 'package:alfurqan/data/dart/verses/uthmani.dart';
import 'package:alfurqan/data/dart/verses/uthmaniTajweed.dart';
import 'package:alfurqan/helper.dart';
import 'package:collection/collection.dart';

enum VerseMode { indopak, uthmani, uthmaniTajweed, imlaei }

enum TranslationType {
  enMASAbdelHaleem,
  idIndonesianIslamicAffairsMinistry,
  frMontadaIslamicFoundation,
  trDarAlSalamCenter
}

enum AudioEdition {
  ar_Abdulbasitmurattal,
  ar_abdullahbasfar,
  ar_abdurrahmaansudais,
  ar_abdulsamad,
  ar_shaatree,
  ar_ahmedajamy,
  ar_alafasy,
  ar_hanirifai,
  ar_husary,
  ar_husarymujawwad,
  ar_hudhaify,
  ar_ibrahimakhbar,
  ar_mahermuaiqly,
  ar_minshawi,
  ar_minshawimujawwad,
  ar_muhammadayyoub,
  ar_muhammadjibreel,
  ar_saoodshuraym,
  en_walk,
  fa_hedayatfarfooladvand,
  ar_parhizgar,
  ur_khan,
  zh_chinese,
  fr_leclerc,
  ar_aymanswoaid;
}

/// A AlQuran.
class AlQuran {
  static String get basmallah {
    return verses_UTHMANI.first.text;
  }

  static int get totalJuz => juzs.length;
  static int get totalChapter => chapters.length;
  static int get totalVerse => verses_INDOPAK.length;
  static int get totalMadaniSurah {
    return chapters
        .where((e) => e.revelationPlace == ChapterRevelationPlace.madinah)
        .length;
  }

  static int get totalMakkiSurah {
    return chapters
        .where((e) => e.revelationPlace == ChapterRevelationPlace.makkah)
        .length;
  }

  // JUZ
  static Juz? getJuz(int chapterNumber, int verseNumber) {
    if (isChapterOutOfRange(chapterNumber) || isVerseOutOfRange(verseNumber)) {
      return null;
    }

    final verse = verses_INDOPAK.firstWhereOrNull((e) {
      return e.verseKey == "$chapterNumber:$verseNumber";
    });

    if (verse == null) {
      return null;
    }

    return juzs.firstWhereOrNull((e) => e.number == verse.juzNumber);
  }

  // CHAPTER
  static Chapter? getChapter(int chapterNumber) {
    if (isChapterOutOfRange(chapterNumber)) {
      return null;
    }

    return chapters.firstWhereOrNull((e) => e.id == chapterNumber);
  }

  // VERSE
  static Verse? getVerse(
    int chapterNumber,
    int verseNumber, {
    VerseMode mode = VerseMode.indopak,
  }) {
    if (isChapterOutOfRange(chapterNumber) || isVerseOutOfRange(verseNumber)) {
      return null;
    }

    List<Verse> verses;
    switch (mode) {
      case VerseMode.indopak:
        verses = verses_INDOPAK;
        break;
      case VerseMode.uthmani:
        verses = verses_UTHMANI;
        break;
      case VerseMode.uthmaniTajweed:
        verses = verses_UTHMANITAJWEED;
        break;
      case VerseMode.imlaei:
        verses = verses_IMLAEI;
        break;
    }

    return verses
        .firstWhereOrNull((e) => e.verseKey == "$chapterNumber:$verseNumber");
  }

  // TRANSLATION
  static VerseTranslation? getTranslation(
      TranslationType type, String verseKey) {
    switch (type) {
      case TranslationType.enMASAbdelHaleem:
        return enMASAbdelHaleem.firstWhereOrNull((e) => e.verseKey == verseKey);
      case TranslationType.idIndonesianIslamicAffairsMinistry:
        return idIndonesianIslamicAffairsMinistry
            .firstWhereOrNull((e) => e.verseKey == verseKey);
      case TranslationType.frMontadaIslamicFoundation:
        return frMontadaIslamicFoundation
            .firstWhereOrNull((e) => e.verseKey == verseKey);
      case TranslationType.trDarAlSalamCenter:
        return trDarAlSalamCenter
            .firstWhereOrNull((e) => e.verseKey == verseKey);
    }
  }

  // Arabic Number
  static String getArabicNumber(int number) {
    final numberStr = number.toString();

    return numberStr
        .split("")
        .map((e) => toArabicNumber(int.parse(e)))
        .join("");
  }

  // Audio URL by Chapter
  static String getAudioURLByChapter(int chapterNumber,
      {AudioEdition edition = AudioEdition.ar_alafasy}) {
    if (isChapterOutOfRange(chapterNumber)) {
      return "";
    }

    final editionParsed = edition.name.toString().replaceAll("_", ".");

    return "https://cdn.islamic.network/quran/audio-surah/128/$editionParsed/$chapterNumber.mp3";
  }

  // Audio URL by Verse
  static String getAudioURLByVerse(int verseNumber,
      {AudioEdition edition = AudioEdition.ar_alafasy}) {
    if (isVerseOutOfRange(verseNumber)) {
      return "";
    }

    final editionParsed = edition.name.toString().replaceAll("_", ".");

    return "https://cdn.islamic.network/quran/audio/128/$editionParsed/$verseNumber.mp3";
  }

  // Image URL of Verse
  static String getImageURLByVerse(String verseKey,
      {bool highQuality = false}) {
    final verseID = verseKey.replaceAll(':', '_');
    if (highQuality) {
      return "https://cdn.islamic.network/quran/images/high-resolution/$verseID.png";
    }

    return "https://cdn.islamic.network/quran/images/$verseID.png";
  }
}
