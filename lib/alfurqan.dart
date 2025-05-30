import 'dart:math';

import 'package:alfurqan/constant.dart';
import 'package:alfurqan/data/dart/chapter.dart';
import 'package:alfurqan/data/dart/juz.dart';
import 'package:alfurqan/data/dart/transliteration.dart';
import 'package:alfurqan/data/dart/types.dart';
import 'package:alfurqan/data/dart/verses/uthmani.dart';
import 'package:alfurqan/helper.dart';
import 'package:collection/collection.dart';

/// A VerseComplete.
class VerseComplete {
  /// The random verse
  final Verse verse;

  /// The translation of the random verse
  final VerseTranslation translation;

  /// Create a VerseComplete
  VerseComplete(this.verse, this.translation);
}

/// A SearchResult
class SearchResult {
  /// The list of found chapters
  final List<Chapter> chapters;

  /// The list of found verses with translations
  final List<VerseComplete> verses;

  /// Create a SearchResult
  SearchResult(this.chapters, this.verses);
}

/// A AlQuran.
class AlQuran {
  /// Get the basmallah arabic text
  static String get basmallah {
    return versesUthmani.first.text;
  }

  /// Get the total juz
  static int get totalJuz => juzs.length;

  /// Get the total chapter
  static int get totalChapter => chapters.length;

  /// Get the total verse
  static int get totalVerse => versesUthmani.length;

  /// Get the total madani surah
  static int get totalMadaniSurah {
    return chapters
        .where((e) => e.revelationPlace == ChapterRevelationPlace.madinah)
        .length;
  }

  /// Get the total makki surah
  static int get totalMakkiSurah {
    return chapters
        .where((e) => e.revelationPlace == ChapterRevelationPlace.makkah)
        .length;
  }

  /// Get the juz by juz number, chapter number and verse number
  /// <br>If the juz number is valid, the other parameters will be ignored
  /// <br>If the juz number, chapter number or verse number is out of range, it will throw an exception
  /// <br>The return is a Juz object
  static Juz juz(
      {int chapterNumber = 0, int verseNumber = 0, int juzNumber = 0}) {
    if (juzNumber < 1 && chapterNumber < 1 && verseNumber < 1) {
      throw Exception(ErrorMessages.juzChapterVerseIsRequired);
    }

    if (juzNumber > 0) {
      if (isJuzOutOfRange(juzNumber)) {
        throw Exception(ErrorMessages.juzNumberOutOfRange);
      }
      return juzs.firstWhere((e) => e.number == juzNumber);
    }

    if (isChapterOutOfRange(chapterNumber)) {
      throw Exception(ErrorMessages.chapterNumberOutOfRange);
    }

    if (isVerseOutOfRange(verseNumber)) {
      throw Exception(ErrorMessages.verseNumberOutOfRange);
    }

    final verse = versesUthmani.firstWhereOrNull((e) {
      return e.verseKey == "$chapterNumber:$verseNumber";
    });

    if (verse == null) {
      throw Exception(ErrorMessages.chapterNumberAndVerseNumberInvalid);
    }

    return juzs.firstWhere((e) => e.number == verse.juzNumber);
  }

  /// Get the chapter by chapter number
  /// <br>If the chapter number is out of range, it will throw an exception
  /// <br>The return is a Chapter object
  static Chapter chapter(int chapterNumber) {
    if (isChapterOutOfRange(chapterNumber)) {
      throw Exception(ErrorMessages.chapterNumberOutOfRange);
    }

    return chapters.firstWhere((e) => e.id == chapterNumber);
  }

  /// Get the verse by chapter number and verse number
  /// <br>If the chapter number or verse number is out of range, it will throw an exception
  /// <br>Support to change verse mode
  /// <br>The return is a Verse object
  static Verse verse(
    int chapterNumber,
    int verseNumber, {
    VerseMode mode = VerseMode.indopak,
  }) {
    if (isChapterOutOfRange(chapterNumber)) {
      throw Exception(ErrorMessages.chapterNumberOutOfRange);
    }

    if (isVerseOutOfRange(verseNumber)) {
      throw Exception(ErrorMessages.verseNumberOutOfRange);
    }

    final verses = getVerses(mode: mode);

    return verses
        .firstWhere((e) => e.verseKey == "$chapterNumber:$verseNumber");
  }

  /// Get the verses by juz number
  /// <br>Will return a list of Verse
  static List<Verse> versesByJuz(int juzNumber,
      {VerseMode mode = VerseMode.indopak}) {
    if (isJuzOutOfRange(juzNumber)) {
      throw Exception(ErrorMessages.juzNumberOutOfRange);
    }

    final selectedVerses = getVerses(mode: mode);
    return selectedVerses.where((e) => e.juzNumber == juzNumber).toList();
  }

  /// Get the verses by chapter number
  /// <br>Will return a list of Verse
  static List<Verse> versesByChapter(int chapterNumber,
      {VerseMode mode = VerseMode.indopak}) {
    if (isChapterOutOfRange(chapterNumber)) {
      throw Exception(ErrorMessages.chapterNumberOutOfRange);
    }

    final selectedVerses = getVerses(mode: mode);
    return selectedVerses.where((e) => e.chapterID == chapterNumber).toList();
  }

  /// Get the translation by type and verse key
  /// <br>If the type or verse key is not exists, it will throw an exception
  /// <br>The return is a VerseTranslation object
  static VerseTranslation translation(TranslationType type, String verseKey) {
    final translations = getTranslations(type: type);
    final transFound =
        translations.firstWhereOrNull((e) => e.verseKey == verseKey);

    if (transFound == null) {
      throw Exception(ErrorMessages.verseKeyInvalid);
    }

    return transFound;
  }

  /// Get the transliteration by verse key
  /// <br>If the verse key is not exists, it will throw an exception
  /// <br>The return is a Transliteration object
  static Transliteration transliteration(String verseKey) {
    final transFound =
        transliterations.firstWhereOrNull((e) => e.id == verseKey);

    if (transFound == null) {
      throw Exception(ErrorMessages.verseKeyInvalid);
    }

    return transFound;
  }

  /// Get the arabic number
  static String arabicNumber(int number) {
    final numberStr = number.toString();

    return numberStr
        .split("")
        .map((e) => toArabicNumber(int.parse(e)))
        .join("");
  }

  /// Get the audio URL by chapter number
  /// <br>If the chapter number is out of range, it will return empty
  /// <br>The return is a String
  /// <br>Support to change audio edition
  static String audioURLByChapter(int chapterNumber,
      {AudioEdition edition = AudioEdition.ar_alafasy}) {
    if (isChapterOutOfRange(chapterNumber)) {
      throw Exception(ErrorMessages.chapterNumberOutOfRange);
    }

    final editionParsed = edition.name.toString().replaceAll("_", ".");

    return "https://cdn.islamic.network/quran/audio-surah/128/$editionParsed/$chapterNumber.mp3";
  }

  /// Get the audio URL by verse number
  /// <br>If the verse number is out of range, it will return empty
  /// <br>The return is a String
  /// <br>Support to change audio edition
  static String audioURLByVerse(int verseNumber,
      {AudioEdition edition = AudioEdition.ar_alafasy}) {
    if (isVerseOutOfRange(verseNumber)) {
      throw Exception(ErrorMessages.verseNumberOutOfRange);
    }

    final editionParsed = edition.name.toString().replaceAll("_", ".");

    return "https://cdn.islamic.network/quran/audio/128/$editionParsed/$verseNumber.mp3";
  }

  /// Get the image URL by verse key
  /// <br>The return is a String
  /// <br>Support to change image quality
  static String imageURLByVerse(String verseKey, {bool highQuality = false}) {
    final verseID = verseKey.replaceAll(':', '_');
    if (highQuality) {
      return "https://cdn.islamic.network/quran/images/high-resolution/$verseID.png";
    }

    return "https://cdn.islamic.network/quran/images/$verseID.png";
  }

  /// Get a random verse
  /// <br>The return is a VerseComplete object
  /// <br>Support to change verse mode
  static VerseComplete randomVerse({
    VerseMode mode = VerseMode.indopak,
    TranslationType translationType = TranslationType.enMASAbdelHaleem,
  }) {
    final rnd = Random();
    final verses = getVerses(mode: mode);
    final nextIndex = rnd.nextInt(verses.length) + 1;
    final verse = verses.elementAtOrNull(nextIndex);
    if (verse == null) {
      return randomVerse(mode: mode, translationType: translationType);
    }
    final trans = translation(translationType, verse.verseKey);

    return VerseComplete(verse, trans);
  }

  /// Search by keyword and translation type
  /// <br>Support to change verse mode
  /// <br>The return is a SearchResult object
  static SearchResult search(
    String keyword,
    TranslationType translationType, {
    VerseMode verseMode = VerseMode.indopak,
  }) {
    final keywordLower = keyword.toLowerCase();
    final verses = getVerses(mode: verseMode);
    final trans = getTranslations(type: translationType);
    final chapterFound = chapters.where((e) {
      final names = [
        e.nameArabic,
        e.nameSimple.toLowerCase(),
        e.nameComplex.toLowerCase(),
        e.nameSimple.toLowerCase().replaceAll('-', ''),
      ].any((e) => e.contains(keywordLower));

      final translated = e.translatedName[translationType.languageCode]
              ?.toLowerCase()
              .contains(keywordLower) ??
          false;

      return names || translated;
    }).toList();

    final transFound = trans.where((e) {
      return e.text.toLowerCase().contains(keywordLower);
    });

    return SearchResult(
        chapterFound,
        transFound
            .map(
              (e) => VerseComplete(
                verses.firstWhere((v) => e.verseKey == v.verseKey),
                e,
              ),
            )
            .toList());
  }
}
