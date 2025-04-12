// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'types.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TranslatedName _$TranslatedNameFromJson(Map<String, dynamic> json) =>
    _TranslatedName(
      name: json['name'] as String? ?? "",
      languageName: json['languageName'] as String? ?? "",
    );

Map<String, dynamic> _$TranslatedNameToJson(_TranslatedName instance) =>
    <String, dynamic>{
      'name': instance.name,
      'languageName': instance.languageName,
    };

_Verse _$VerseFromJson(Map<String, dynamic> json) => _Verse(
      id: (json['id'] as num?)?.toInt() ?? 0,
      verseKey: json['verseKey'] as String? ?? "",
      text: json['text'] as String? ?? "",
      chapterID: (json['chapterID'] as num?)?.toInt() ?? 0,
      pageNumber: (json['pageNumber'] as num?)?.toInt() ?? 0,
      juzNumber: (json['juzNumber'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$VerseToJson(_Verse instance) => <String, dynamic>{
      'id': instance.id,
      'verseKey': instance.verseKey,
      'text': instance.text,
      'chapterID': instance.chapterID,
      'pageNumber': instance.pageNumber,
      'juzNumber': instance.juzNumber,
    };

_VerseTranslation _$VerseTranslationFromJson(Map<String, dynamic> json) =>
    _VerseTranslation(
      id: (json['id'] as num?)?.toInt() ?? 0,
      verseKey: json['verseKey'] as String? ?? "",
      text: json['text'] as String? ?? "",
      resourceID: (json['resourceID'] as num?)?.toInt() ?? 0,
      languageName: json['languageName'] as String? ?? "",
    );

Map<String, dynamic> _$VerseTranslationToJson(_VerseTranslation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verseKey': instance.verseKey,
      'text': instance.text,
      'resourceID': instance.resourceID,
      'languageName': instance.languageName,
    };

_Chapter _$ChapterFromJson(Map<String, dynamic> json) => _Chapter(
      id: (json['id'] as num?)?.toInt() ?? 0,
      bismillahPre: json['bismillahPre'] as bool? ?? false,
      nameArabic: json['nameArabic'] as String? ?? "",
      nameComplex: json['nameComplex'] as String? ?? "",
      nameSimple: json['nameSimple'] as String? ?? "",
      pages: (json['pages'] as List<dynamic>?)
              ?.map((e) => (e as num).toInt())
              .toList() ??
          const [],
      revelationOrder: (json['revelationOrder'] as num?)?.toInt() ?? 0,
      revelationPlace: $enumDecodeNullable(
              _$ChapterRevelationPlaceEnumMap, json['revelationPlace']) ??
          ChapterRevelationPlace.makkah,
      translatedName: (json['translatedName'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
      versesCount: (json['versesCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ChapterToJson(_Chapter instance) => <String, dynamic>{
      'id': instance.id,
      'bismillahPre': instance.bismillahPre,
      'nameArabic': instance.nameArabic,
      'nameComplex': instance.nameComplex,
      'nameSimple': instance.nameSimple,
      'pages': instance.pages,
      'revelationOrder': instance.revelationOrder,
      'revelationPlace':
          _$ChapterRevelationPlaceEnumMap[instance.revelationPlace]!,
      'translatedName': instance.translatedName,
      'versesCount': instance.versesCount,
    };

const _$ChapterRevelationPlaceEnumMap = {
  ChapterRevelationPlace.makkah: 'makkah',
  ChapterRevelationPlace.madinah: 'madinah',
};

_JuzVerse _$JuzVerseFromJson(Map<String, dynamic> json) => _JuzVerse(
      first: (json['first'] as num?)?.toInt() ?? 0,
      last: (json['last'] as num?)?.toInt() ?? 0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      items: (json['items'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const {},
    );

Map<String, dynamic> _$JuzVerseToJson(_JuzVerse instance) => <String, dynamic>{
      'first': instance.first,
      'last': instance.last,
      'count': instance.count,
      'items': instance.items,
    };

_Juz _$JuzFromJson(Map<String, dynamic> json) => _Juz(
      verse: JuzVerse.fromJson(json['verse'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt() ?? 0,
      number: (json['number'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$JuzToJson(_Juz instance) => <String, dynamic>{
      'verse': instance.verse,
      'id': instance.id,
      'number': instance.number,
    };

_Translation _$TranslationFromJson(Map<String, dynamic> json) => _Translation(
      verse: TranslatedName.fromJson(json['verse'] as Map<String, dynamic>),
      id: (json['id'] as num?)?.toInt() ?? 0,
      number: (json['number'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      authorName: json['authorName'] as String? ?? "",
      slug: json['slug'] as String? ?? "",
      languageName: json['languageName'] as String? ?? "",
    );

Map<String, dynamic> _$TranslationToJson(_Translation instance) =>
    <String, dynamic>{
      'verse': instance.verse,
      'id': instance.id,
      'number': instance.number,
      'name': instance.name,
      'authorName': instance.authorName,
      'slug': instance.slug,
      'languageName': instance.languageName,
    };

_Transliteration _$TransliterationFromJson(Map<String, dynamic> json) =>
    _Transliteration(
      id: json['id'] as String? ?? "",
      text: json['text'] as String? ?? "",
    );

Map<String, dynamic> _$TransliterationToJson(_Transliteration instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
    };
