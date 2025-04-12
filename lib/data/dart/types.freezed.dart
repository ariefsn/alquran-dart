// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranslatedName {
  String get name;
  String get languageName;

  /// Create a copy of TranslatedName
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TranslatedNameCopyWith<TranslatedName> get copyWith =>
      _$TranslatedNameCopyWithImpl<TranslatedName>(
          this as TranslatedName, _$identity);

  /// Serializes this TranslatedName to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TranslatedName &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, languageName);

  @override
  String toString() {
    return 'TranslatedName(name: $name, languageName: $languageName)';
  }
}

/// @nodoc
abstract mixin class $TranslatedNameCopyWith<$Res> {
  factory $TranslatedNameCopyWith(
          TranslatedName value, $Res Function(TranslatedName) _then) =
      _$TranslatedNameCopyWithImpl;
  @useResult
  $Res call({String name, String languageName});
}

/// @nodoc
class _$TranslatedNameCopyWithImpl<$Res>
    implements $TranslatedNameCopyWith<$Res> {
  _$TranslatedNameCopyWithImpl(this._self, this._then);

  final TranslatedName _self;
  final $Res Function(TranslatedName) _then;

  /// Create a copy of TranslatedName
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? languageName = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _TranslatedName implements TranslatedName {
  _TranslatedName({this.name = "", this.languageName = ""});
  factory _TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String languageName;

  /// Create a copy of TranslatedName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TranslatedNameCopyWith<_TranslatedName> get copyWith =>
      __$TranslatedNameCopyWithImpl<_TranslatedName>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TranslatedNameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TranslatedName &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, languageName);

  @override
  String toString() {
    return 'TranslatedName(name: $name, languageName: $languageName)';
  }
}

/// @nodoc
abstract mixin class _$TranslatedNameCopyWith<$Res>
    implements $TranslatedNameCopyWith<$Res> {
  factory _$TranslatedNameCopyWith(
          _TranslatedName value, $Res Function(_TranslatedName) _then) =
      __$TranslatedNameCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String languageName});
}

/// @nodoc
class __$TranslatedNameCopyWithImpl<$Res>
    implements _$TranslatedNameCopyWith<$Res> {
  __$TranslatedNameCopyWithImpl(this._self, this._then);

  final _TranslatedName _self;
  final $Res Function(_TranslatedName) _then;

  /// Create a copy of TranslatedName
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? languageName = null,
  }) {
    return _then(_TranslatedName(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Verse {
  int get id;
  String get verseKey;
  String get text;
  int get chapterID;
  int get pageNumber;
  int get juzNumber;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerseCopyWith<Verse> get copyWith =>
      _$VerseCopyWithImpl<Verse>(this as Verse, _$identity);

  /// Serializes this Verse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Verse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verseKey, verseKey) ||
                other.verseKey == verseKey) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.chapterID, chapterID) ||
                other.chapterID == chapterID) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.juzNumber, juzNumber) ||
                other.juzNumber == juzNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, verseKey, text, chapterID, pageNumber, juzNumber);

  @override
  String toString() {
    return 'Verse(id: $id, verseKey: $verseKey, text: $text, chapterID: $chapterID, pageNumber: $pageNumber, juzNumber: $juzNumber)';
  }
}

/// @nodoc
abstract mixin class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) _then) =
      _$VerseCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String verseKey,
      String text,
      int chapterID,
      int pageNumber,
      int juzNumber});
}

/// @nodoc
class _$VerseCopyWithImpl<$Res> implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._self, this._then);

  final Verse _self;
  final $Res Function(Verse) _then;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verseKey = null,
    Object? text = null,
    Object? chapterID = null,
    Object? pageNumber = null,
    Object? juzNumber = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _self.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chapterID: null == chapterID
          ? _self.chapterID
          : chapterID // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      juzNumber: null == juzNumber
          ? _self.juzNumber
          : juzNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Verse implements Verse {
  _Verse(
      {this.id = 0,
      this.verseKey = "",
      this.text = "",
      this.chapterID = 0,
      this.pageNumber = 0,
      this.juzNumber = 0});
  factory _Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String verseKey;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final int chapterID;
  @override
  @JsonKey()
  final int pageNumber;
  @override
  @JsonKey()
  final int juzNumber;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerseCopyWith<_Verse> get copyWith =>
      __$VerseCopyWithImpl<_Verse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Verse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verseKey, verseKey) ||
                other.verseKey == verseKey) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.chapterID, chapterID) ||
                other.chapterID == chapterID) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.juzNumber, juzNumber) ||
                other.juzNumber == juzNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, verseKey, text, chapterID, pageNumber, juzNumber);

  @override
  String toString() {
    return 'Verse(id: $id, verseKey: $verseKey, text: $text, chapterID: $chapterID, pageNumber: $pageNumber, juzNumber: $juzNumber)';
  }
}

/// @nodoc
abstract mixin class _$VerseCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$VerseCopyWith(_Verse value, $Res Function(_Verse) _then) =
      __$VerseCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String verseKey,
      String text,
      int chapterID,
      int pageNumber,
      int juzNumber});
}

/// @nodoc
class __$VerseCopyWithImpl<$Res> implements _$VerseCopyWith<$Res> {
  __$VerseCopyWithImpl(this._self, this._then);

  final _Verse _self;
  final $Res Function(_Verse) _then;

  /// Create a copy of Verse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? verseKey = null,
    Object? text = null,
    Object? chapterID = null,
    Object? pageNumber = null,
    Object? juzNumber = null,
  }) {
    return _then(_Verse(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _self.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      chapterID: null == chapterID
          ? _self.chapterID
          : chapterID // ignore: cast_nullable_to_non_nullable
              as int,
      pageNumber: null == pageNumber
          ? _self.pageNumber
          : pageNumber // ignore: cast_nullable_to_non_nullable
              as int,
      juzNumber: null == juzNumber
          ? _self.juzNumber
          : juzNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$VerseTranslation {
  int get id;
  String get verseKey;
  String get text;
  int get resourceID;
  String get languageName;

  /// Create a copy of VerseTranslation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $VerseTranslationCopyWith<VerseTranslation> get copyWith =>
      _$VerseTranslationCopyWithImpl<VerseTranslation>(
          this as VerseTranslation, _$identity);

  /// Serializes this VerseTranslation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VerseTranslation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verseKey, verseKey) ||
                other.verseKey == verseKey) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.resourceID, resourceID) ||
                other.resourceID == resourceID) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, verseKey, text, resourceID, languageName);

  @override
  String toString() {
    return 'VerseTranslation(id: $id, verseKey: $verseKey, text: $text, resourceID: $resourceID, languageName: $languageName)';
  }
}

/// @nodoc
abstract mixin class $VerseTranslationCopyWith<$Res> {
  factory $VerseTranslationCopyWith(
          VerseTranslation value, $Res Function(VerseTranslation) _then) =
      _$VerseTranslationCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      String verseKey,
      String text,
      int resourceID,
      String languageName});
}

/// @nodoc
class _$VerseTranslationCopyWithImpl<$Res>
    implements $VerseTranslationCopyWith<$Res> {
  _$VerseTranslationCopyWithImpl(this._self, this._then);

  final VerseTranslation _self;
  final $Res Function(VerseTranslation) _then;

  /// Create a copy of VerseTranslation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verseKey = null,
    Object? text = null,
    Object? resourceID = null,
    Object? languageName = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _self.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      resourceID: null == resourceID
          ? _self.resourceID
          : resourceID // ignore: cast_nullable_to_non_nullable
              as int,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _VerseTranslation implements VerseTranslation {
  _VerseTranslation(
      {this.id = 0,
      this.verseKey = "",
      this.text = "",
      this.resourceID = 0,
      this.languageName = ""});
  factory _VerseTranslation.fromJson(Map<String, dynamic> json) =>
      _$VerseTranslationFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String verseKey;
  @override
  @JsonKey()
  final String text;
  @override
  @JsonKey()
  final int resourceID;
  @override
  @JsonKey()
  final String languageName;

  /// Create a copy of VerseTranslation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$VerseTranslationCopyWith<_VerseTranslation> get copyWith =>
      __$VerseTranslationCopyWithImpl<_VerseTranslation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$VerseTranslationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _VerseTranslation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verseKey, verseKey) ||
                other.verseKey == verseKey) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.resourceID, resourceID) ||
                other.resourceID == resourceID) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, verseKey, text, resourceID, languageName);

  @override
  String toString() {
    return 'VerseTranslation(id: $id, verseKey: $verseKey, text: $text, resourceID: $resourceID, languageName: $languageName)';
  }
}

/// @nodoc
abstract mixin class _$VerseTranslationCopyWith<$Res>
    implements $VerseTranslationCopyWith<$Res> {
  factory _$VerseTranslationCopyWith(
          _VerseTranslation value, $Res Function(_VerseTranslation) _then) =
      __$VerseTranslationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      String verseKey,
      String text,
      int resourceID,
      String languageName});
}

/// @nodoc
class __$VerseTranslationCopyWithImpl<$Res>
    implements _$VerseTranslationCopyWith<$Res> {
  __$VerseTranslationCopyWithImpl(this._self, this._then);

  final _VerseTranslation _self;
  final $Res Function(_VerseTranslation) _then;

  /// Create a copy of VerseTranslation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? verseKey = null,
    Object? text = null,
    Object? resourceID = null,
    Object? languageName = null,
  }) {
    return _then(_VerseTranslation(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      verseKey: null == verseKey
          ? _self.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      resourceID: null == resourceID
          ? _self.resourceID
          : resourceID // ignore: cast_nullable_to_non_nullable
              as int,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$Chapter {
  int get id;
  bool get bismillahPre;
  String get nameArabic;
  String get nameComplex;
  String get nameSimple;
  List<int> get pages;
  int get revelationOrder;
  ChapterRevelationPlace get revelationPlace;
  ChapterTranslatedName get translatedName;
  int get versesCount;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ChapterCopyWith<Chapter> get copyWith =>
      _$ChapterCopyWithImpl<Chapter>(this as Chapter, _$identity);

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Chapter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bismillahPre, bismillahPre) ||
                other.bismillahPre == bismillahPre) &&
            (identical(other.nameArabic, nameArabic) ||
                other.nameArabic == nameArabic) &&
            (identical(other.nameComplex, nameComplex) ||
                other.nameComplex == nameComplex) &&
            (identical(other.nameSimple, nameSimple) ||
                other.nameSimple == nameSimple) &&
            const DeepCollectionEquality().equals(other.pages, pages) &&
            (identical(other.revelationOrder, revelationOrder) ||
                other.revelationOrder == revelationOrder) &&
            (identical(other.revelationPlace, revelationPlace) ||
                other.revelationPlace == revelationPlace) &&
            const DeepCollectionEquality()
                .equals(other.translatedName, translatedName) &&
            (identical(other.versesCount, versesCount) ||
                other.versesCount == versesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bismillahPre,
      nameArabic,
      nameComplex,
      nameSimple,
      const DeepCollectionEquality().hash(pages),
      revelationOrder,
      revelationPlace,
      const DeepCollectionEquality().hash(translatedName),
      versesCount);

  @override
  String toString() {
    return 'Chapter(id: $id, bismillahPre: $bismillahPre, nameArabic: $nameArabic, nameComplex: $nameComplex, nameSimple: $nameSimple, pages: $pages, revelationOrder: $revelationOrder, revelationPlace: $revelationPlace, translatedName: $translatedName, versesCount: $versesCount)';
  }
}

/// @nodoc
abstract mixin class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) _then) =
      _$ChapterCopyWithImpl;
  @useResult
  $Res call(
      {int id,
      bool bismillahPre,
      String nameArabic,
      String nameComplex,
      String nameSimple,
      List<int> pages,
      int revelationOrder,
      ChapterRevelationPlace revelationPlace,
      Map<String, String> translatedName,
      int versesCount});
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res> implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._self, this._then);

  final Chapter _self;
  final $Res Function(Chapter) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? bismillahPre = null,
    Object? nameArabic = null,
    Object? nameComplex = null,
    Object? nameSimple = null,
    Object? pages = null,
    Object? revelationOrder = null,
    Object? revelationPlace = null,
    Object? translatedName = null,
    Object? versesCount = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bismillahPre: null == bismillahPre
          ? _self.bismillahPre
          : bismillahPre // ignore: cast_nullable_to_non_nullable
              as bool,
      nameArabic: null == nameArabic
          ? _self.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String,
      nameComplex: null == nameComplex
          ? _self.nameComplex
          : nameComplex // ignore: cast_nullable_to_non_nullable
              as String,
      nameSimple: null == nameSimple
          ? _self.nameSimple
          : nameSimple // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _self.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>,
      revelationOrder: null == revelationOrder
          ? _self.revelationOrder
          : revelationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      revelationPlace: null == revelationPlace
          ? _self.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
              as ChapterRevelationPlace,
      translatedName: null == translatedName
          ? _self.translatedName!
          : translatedName // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      versesCount: null == versesCount
          ? _self.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Chapter implements Chapter {
  _Chapter(
      {this.id = 0,
      this.bismillahPre = false,
      this.nameArabic = "",
      this.nameComplex = "",
      this.nameSimple = "",
      final List<int> pages = const [],
      this.revelationOrder = 0,
      this.revelationPlace = ChapterRevelationPlace.makkah,
      final Map<String, String> translatedName = const {},
      this.versesCount = 0})
      : _pages = pages,
        _translatedName = translatedName;
  factory _Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final bool bismillahPre;
  @override
  @JsonKey()
  final String nameArabic;
  @override
  @JsonKey()
  final String nameComplex;
  @override
  @JsonKey()
  final String nameSimple;
  final List<int> _pages;
  @override
  @JsonKey()
  List<int> get pages {
    if (_pages is EqualUnmodifiableListView) return _pages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pages);
  }

  @override
  @JsonKey()
  final int revelationOrder;
  @override
  @JsonKey()
  final ChapterRevelationPlace revelationPlace;
  final Map<String, String> _translatedName;
  @override
  @JsonKey()
  Map<String, String> get translatedName {
    if (_translatedName is EqualUnmodifiableMapView) return _translatedName;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_translatedName);
  }

  @override
  @JsonKey()
  final int versesCount;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChapterCopyWith<_Chapter> get copyWith =>
      __$ChapterCopyWithImpl<_Chapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChapterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Chapter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.bismillahPre, bismillahPre) ||
                other.bismillahPre == bismillahPre) &&
            (identical(other.nameArabic, nameArabic) ||
                other.nameArabic == nameArabic) &&
            (identical(other.nameComplex, nameComplex) ||
                other.nameComplex == nameComplex) &&
            (identical(other.nameSimple, nameSimple) ||
                other.nameSimple == nameSimple) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.revelationOrder, revelationOrder) ||
                other.revelationOrder == revelationOrder) &&
            (identical(other.revelationPlace, revelationPlace) ||
                other.revelationPlace == revelationPlace) &&
            const DeepCollectionEquality()
                .equals(other._translatedName, _translatedName) &&
            (identical(other.versesCount, versesCount) ||
                other.versesCount == versesCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      bismillahPre,
      nameArabic,
      nameComplex,
      nameSimple,
      const DeepCollectionEquality().hash(_pages),
      revelationOrder,
      revelationPlace,
      const DeepCollectionEquality().hash(_translatedName),
      versesCount);

  @override
  String toString() {
    return 'Chapter(id: $id, bismillahPre: $bismillahPre, nameArabic: $nameArabic, nameComplex: $nameComplex, nameSimple: $nameSimple, pages: $pages, revelationOrder: $revelationOrder, revelationPlace: $revelationPlace, translatedName: $translatedName, versesCount: $versesCount)';
  }
}

/// @nodoc
abstract mixin class _$ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$ChapterCopyWith(_Chapter value, $Res Function(_Chapter) _then) =
      __$ChapterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {int id,
      bool bismillahPre,
      String nameArabic,
      String nameComplex,
      String nameSimple,
      List<int> pages,
      int revelationOrder,
      ChapterRevelationPlace revelationPlace,
      Map<String, String> translatedName,
      int versesCount});
}

/// @nodoc
class __$ChapterCopyWithImpl<$Res> implements _$ChapterCopyWith<$Res> {
  __$ChapterCopyWithImpl(this._self, this._then);

  final _Chapter _self;
  final $Res Function(_Chapter) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? bismillahPre = null,
    Object? nameArabic = null,
    Object? nameComplex = null,
    Object? nameSimple = null,
    Object? pages = null,
    Object? revelationOrder = null,
    Object? revelationPlace = null,
    Object? translatedName = null,
    Object? versesCount = null,
  }) {
    return _then(_Chapter(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      bismillahPre: null == bismillahPre
          ? _self.bismillahPre
          : bismillahPre // ignore: cast_nullable_to_non_nullable
              as bool,
      nameArabic: null == nameArabic
          ? _self.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String,
      nameComplex: null == nameComplex
          ? _self.nameComplex
          : nameComplex // ignore: cast_nullable_to_non_nullable
              as String,
      nameSimple: null == nameSimple
          ? _self.nameSimple
          : nameSimple // ignore: cast_nullable_to_non_nullable
              as String,
      pages: null == pages
          ? _self._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>,
      revelationOrder: null == revelationOrder
          ? _self.revelationOrder
          : revelationOrder // ignore: cast_nullable_to_non_nullable
              as int,
      revelationPlace: null == revelationPlace
          ? _self.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
              as ChapterRevelationPlace,
      translatedName: null == translatedName
          ? _self._translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      versesCount: null == versesCount
          ? _self.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$JuzVerse {
  int get first;
  int get last;
  int get count;
  JuzVerseMapping get items;

  /// Create a copy of JuzVerse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JuzVerseCopyWith<JuzVerse> get copyWith =>
      _$JuzVerseCopyWithImpl<JuzVerse>(this as JuzVerse, _$identity);

  /// Serializes this JuzVerse to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is JuzVerse &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.items, items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, count,
      const DeepCollectionEquality().hash(items));

  @override
  String toString() {
    return 'JuzVerse(first: $first, last: $last, count: $count, items: $items)';
  }
}

/// @nodoc
abstract mixin class $JuzVerseCopyWith<$Res> {
  factory $JuzVerseCopyWith(JuzVerse value, $Res Function(JuzVerse) _then) =
      _$JuzVerseCopyWithImpl;
  @useResult
  $Res call({int first, int last, int count, Map<String, String> items});
}

/// @nodoc
class _$JuzVerseCopyWithImpl<$Res> implements $JuzVerseCopyWith<$Res> {
  _$JuzVerseCopyWithImpl(this._self, this._then);

  final JuzVerse _self;
  final $Res Function(JuzVerse) _then;

  /// Create a copy of JuzVerse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_self.copyWith(
      first: null == first
          ? _self.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _self.items!
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _JuzVerse implements JuzVerse {
  _JuzVerse(
      {this.first = 0,
      this.last = 0,
      this.count = 0,
      final Map<String, String> items = const {}})
      : _items = items;
  factory _JuzVerse.fromJson(Map<String, dynamic> json) =>
      _$JuzVerseFromJson(json);

  @override
  @JsonKey()
  final int first;
  @override
  @JsonKey()
  final int last;
  @override
  @JsonKey()
  final int count;
  final Map<String, String> _items;
  @override
  @JsonKey()
  Map<String, String> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  /// Create a copy of JuzVerse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JuzVerseCopyWith<_JuzVerse> get copyWith =>
      __$JuzVerseCopyWithImpl<_JuzVerse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JuzVerseToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _JuzVerse &&
            (identical(other.first, first) || other.first == first) &&
            (identical(other.last, last) || other.last == last) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first, last, count,
      const DeepCollectionEquality().hash(_items));

  @override
  String toString() {
    return 'JuzVerse(first: $first, last: $last, count: $count, items: $items)';
  }
}

/// @nodoc
abstract mixin class _$JuzVerseCopyWith<$Res>
    implements $JuzVerseCopyWith<$Res> {
  factory _$JuzVerseCopyWith(_JuzVerse value, $Res Function(_JuzVerse) _then) =
      __$JuzVerseCopyWithImpl;
  @override
  @useResult
  $Res call({int first, int last, int count, Map<String, String> items});
}

/// @nodoc
class __$JuzVerseCopyWithImpl<$Res> implements _$JuzVerseCopyWith<$Res> {
  __$JuzVerseCopyWithImpl(this._self, this._then);

  final _JuzVerse _self;
  final $Res Function(_JuzVerse) _then;

  /// Create a copy of JuzVerse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? first = null,
    Object? last = null,
    Object? count = null,
    Object? items = null,
  }) {
    return _then(_JuzVerse(
      first: null == first
          ? _self.first
          : first // ignore: cast_nullable_to_non_nullable
              as int,
      last: null == last
          ? _self.last
          : last // ignore: cast_nullable_to_non_nullable
              as int,
      count: null == count
          ? _self.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      items: null == items
          ? _self._items
          : items // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
mixin _$Juz {
  JuzVerse get verse;
  int get id;
  int get number;

  /// Create a copy of Juz
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $JuzCopyWith<Juz> get copyWith =>
      _$JuzCopyWithImpl<Juz>(this as Juz, _$identity);

  /// Serializes this Juz to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Juz &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verse, id, number);

  @override
  String toString() {
    return 'Juz(verse: $verse, id: $id, number: $number)';
  }
}

/// @nodoc
abstract mixin class $JuzCopyWith<$Res> {
  factory $JuzCopyWith(Juz value, $Res Function(Juz) _then) = _$JuzCopyWithImpl;
  @useResult
  $Res call({JuzVerse verse, int id, int number});

  $JuzVerseCopyWith<$Res> get verse;
}

/// @nodoc
class _$JuzCopyWithImpl<$Res> implements $JuzCopyWith<$Res> {
  _$JuzCopyWithImpl(this._self, this._then);

  final Juz _self;
  final $Res Function(Juz) _then;

  /// Create a copy of Juz
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verse = null,
    Object? id = null,
    Object? number = null,
  }) {
    return _then(_self.copyWith(
      verse: null == verse
          ? _self.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as JuzVerse,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Juz
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JuzVerseCopyWith<$Res> get verse {
    return $JuzVerseCopyWith<$Res>(_self.verse, (value) {
      return _then(_self.copyWith(verse: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Juz implements Juz {
  _Juz({required this.verse, this.id = 0, this.number = 0});
  factory _Juz.fromJson(Map<String, dynamic> json) => _$JuzFromJson(json);

  @override
  final JuzVerse verse;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int number;

  /// Create a copy of Juz
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$JuzCopyWith<_Juz> get copyWith =>
      __$JuzCopyWithImpl<_Juz>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$JuzToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Juz &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, verse, id, number);

  @override
  String toString() {
    return 'Juz(verse: $verse, id: $id, number: $number)';
  }
}

/// @nodoc
abstract mixin class _$JuzCopyWith<$Res> implements $JuzCopyWith<$Res> {
  factory _$JuzCopyWith(_Juz value, $Res Function(_Juz) _then) =
      __$JuzCopyWithImpl;
  @override
  @useResult
  $Res call({JuzVerse verse, int id, int number});

  @override
  $JuzVerseCopyWith<$Res> get verse;
}

/// @nodoc
class __$JuzCopyWithImpl<$Res> implements _$JuzCopyWith<$Res> {
  __$JuzCopyWithImpl(this._self, this._then);

  final _Juz _self;
  final $Res Function(_Juz) _then;

  /// Create a copy of Juz
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? verse = null,
    Object? id = null,
    Object? number = null,
  }) {
    return _then(_Juz(
      verse: null == verse
          ? _self.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as JuzVerse,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of Juz
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JuzVerseCopyWith<$Res> get verse {
    return $JuzVerseCopyWith<$Res>(_self.verse, (value) {
      return _then(_self.copyWith(verse: value));
    });
  }
}

/// @nodoc
mixin _$Translation {
  TranslatedName get verse;
  int get id;
  int get number;
  String get name;
  String get authorName;
  String get slug;
  String get languageName;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TranslationCopyWith<Translation> get copyWith =>
      _$TranslationCopyWithImpl<Translation>(this as Translation, _$identity);

  /// Serializes this Translation to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Translation &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, verse, id, number, name, authorName, slug, languageName);

  @override
  String toString() {
    return 'Translation(verse: $verse, id: $id, number: $number, name: $name, authorName: $authorName, slug: $slug, languageName: $languageName)';
  }
}

/// @nodoc
abstract mixin class $TranslationCopyWith<$Res> {
  factory $TranslationCopyWith(
          Translation value, $Res Function(Translation) _then) =
      _$TranslationCopyWithImpl;
  @useResult
  $Res call(
      {TranslatedName verse,
      int id,
      int number,
      String name,
      String authorName,
      String slug,
      String languageName});

  $TranslatedNameCopyWith<$Res> get verse;
}

/// @nodoc
class _$TranslationCopyWithImpl<$Res> implements $TranslationCopyWith<$Res> {
  _$TranslationCopyWithImpl(this._self, this._then);

  final Translation _self;
  final $Res Function(Translation) _then;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? verse = null,
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? authorName = null,
    Object? slug = null,
    Object? languageName = null,
  }) {
    return _then(_self.copyWith(
      verse: null == verse
          ? _self.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as TranslatedName,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _self.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedNameCopyWith<$Res> get verse {
    return $TranslatedNameCopyWith<$Res>(_self.verse, (value) {
      return _then(_self.copyWith(verse: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Translation implements Translation {
  _Translation(
      {required this.verse,
      this.id = 0,
      this.number = 0,
      this.name = "",
      this.authorName = "",
      this.slug = "",
      this.languageName = ""});
  factory _Translation.fromJson(Map<String, dynamic> json) =>
      _$TranslationFromJson(json);

  @override
  final TranslatedName verse;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int number;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String authorName;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String languageName;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TranslationCopyWith<_Translation> get copyWith =>
      __$TranslationCopyWithImpl<_Translation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TranslationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Translation &&
            (identical(other.verse, verse) || other.verse == verse) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.languageName, languageName) ||
                other.languageName == languageName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, verse, id, number, name, authorName, slug, languageName);

  @override
  String toString() {
    return 'Translation(verse: $verse, id: $id, number: $number, name: $name, authorName: $authorName, slug: $slug, languageName: $languageName)';
  }
}

/// @nodoc
abstract mixin class _$TranslationCopyWith<$Res>
    implements $TranslationCopyWith<$Res> {
  factory _$TranslationCopyWith(
          _Translation value, $Res Function(_Translation) _then) =
      __$TranslationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {TranslatedName verse,
      int id,
      int number,
      String name,
      String authorName,
      String slug,
      String languageName});

  @override
  $TranslatedNameCopyWith<$Res> get verse;
}

/// @nodoc
class __$TranslationCopyWithImpl<$Res> implements _$TranslationCopyWith<$Res> {
  __$TranslationCopyWithImpl(this._self, this._then);

  final _Translation _self;
  final $Res Function(_Translation) _then;

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? verse = null,
    Object? id = null,
    Object? number = null,
    Object? name = null,
    Object? authorName = null,
    Object? slug = null,
    Object? languageName = null,
  }) {
    return _then(_Translation(
      verse: null == verse
          ? _self.verse
          : verse // ignore: cast_nullable_to_non_nullable
              as TranslatedName,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      number: null == number
          ? _self.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _self.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _self.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      languageName: null == languageName
          ? _self.languageName
          : languageName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of Translation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TranslatedNameCopyWith<$Res> get verse {
    return $TranslatedNameCopyWith<$Res>(_self.verse, (value) {
      return _then(_self.copyWith(verse: value));
    });
  }
}

/// @nodoc
mixin _$Transliteration {
  String get id;
  String get text;

  /// Create a copy of Transliteration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransliterationCopyWith<Transliteration> get copyWith =>
      _$TransliterationCopyWithImpl<Transliteration>(
          this as Transliteration, _$identity);

  /// Serializes this Transliteration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Transliteration &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @override
  String toString() {
    return 'Transliteration(id: $id, text: $text)';
  }
}

/// @nodoc
abstract mixin class $TransliterationCopyWith<$Res> {
  factory $TransliterationCopyWith(
          Transliteration value, $Res Function(Transliteration) _then) =
      _$TransliterationCopyWithImpl;
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class _$TransliterationCopyWithImpl<$Res>
    implements $TransliterationCopyWith<$Res> {
  _$TransliterationCopyWithImpl(this._self, this._then);

  final Transliteration _self;
  final $Res Function(Transliteration) _then;

  /// Create a copy of Transliteration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Transliteration implements Transliteration {
  _Transliteration({this.id = "", this.text = ""});
  factory _Transliteration.fromJson(Map<String, dynamic> json) =>
      _$TransliterationFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String text;

  /// Create a copy of Transliteration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TransliterationCopyWith<_Transliteration> get copyWith =>
      __$TransliterationCopyWithImpl<_Transliteration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransliterationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Transliteration &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text);

  @override
  String toString() {
    return 'Transliteration(id: $id, text: $text)';
  }
}

/// @nodoc
abstract mixin class _$TransliterationCopyWith<$Res>
    implements $TransliterationCopyWith<$Res> {
  factory _$TransliterationCopyWith(
          _Transliteration value, $Res Function(_Transliteration) _then) =
      __$TransliterationCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String text});
}

/// @nodoc
class __$TransliterationCopyWithImpl<$Res>
    implements _$TransliterationCopyWith<$Res> {
  __$TransliterationCopyWithImpl(this._self, this._then);

  final _Transliteration _self;
  final $Res Function(_Transliteration) _then;

  /// Create a copy of Transliteration
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? text = null,
  }) {
    return _then(_Transliteration(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _self.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
