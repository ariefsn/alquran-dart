import 'package:freezed_annotation/freezed_annotation.dart';

part 'types.freezed.dart';
part 'types.g.dart';

@freezed
abstract class TranslatedName with _$TranslatedName {
  factory TranslatedName({
    @Default("") String name,
    @Default("") String languageName,
  }) = _TranslatedName;

  factory TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);
}

@freezed
abstract class Verse with _$Verse {
  factory Verse({
    @Default(0) int id,
    @Default("") String verseKey,
    @Default("") String text,
    @Default(0) int chapterID,
    @Default(0) int pageNumber,
    @Default(0) int juzNumber,
  }) = _Verse;

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);
}

@freezed
abstract class VerseTranslation with _$VerseTranslation {
  factory VerseTranslation({
    @Default(0) int id,
    @Default("") String verseKey,
    @Default("") String text,
    @Default(0) int resourceID,
    @Default("") String languageName,
  }) = _VerseTranslation;

  factory VerseTranslation.fromJson(Map<String, dynamic> json) =>
      _$VerseTranslationFromJson(json);
}

enum ChapterRevelationPlace { makkah, madinah }

typedef ChapterTranslatedName = Map<String, String>;

@freezed
abstract class Chapter with _$Chapter {
  factory Chapter({
    @Default(0) int id,
    @Default(false) bool bismillahPre,
    @Default("") String nameArabic,
    @Default("") String nameComplex,
    @Default("") String nameSimple,
    @Default([]) List<int> pages,
    @Default(0) int revelationOrder,
    @Default(ChapterRevelationPlace.makkah)
    ChapterRevelationPlace revelationPlace,
    @Default({}) ChapterTranslatedName translatedName,
    @Default(0) int versesCount,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

typedef JuzVerseMapping = Map<String, String>;

@freezed
abstract class JuzVerse with _$JuzVerse {
  factory JuzVerse({
    @Default(0) int first,
    @Default(0) int last,
    @Default(0) int count,
    @Default({}) JuzVerseMapping items,
  }) = _JuzVerse;

  factory JuzVerse.fromJson(Map<String, dynamic> json) =>
      _$JuzVerseFromJson(json);
}

@freezed
abstract class Juz with _$Juz {
  factory Juz({
    required JuzVerse verse,
    @Default(0) int id,
    @Default(0) int number,
  }) = _Juz;

  factory Juz.fromJson(Map<String, dynamic> json) => _$JuzFromJson(json);
}

@freezed
abstract class Translation with _$Translation {
  factory Translation({
    required TranslatedName verse,
    @Default(0) int id,
    @Default(0) int number,
    @Default("") String name,
    @Default("") String authorName,
    @Default("") String slug,
    @Default("") String languageName,
  }) = _Translation;

  factory Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);
}

@freezed
abstract class Transliteration with _$Transliteration {
  factory Transliteration({
    @Default("") String id,
    @Default("") String text,
  }) = _Transliteration;

  factory Transliteration.fromJson(Map<String, dynamic> json) =>
      _$TransliterationFromJson(json);
}
