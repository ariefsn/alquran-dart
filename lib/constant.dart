// ignore_for_file: constant_identifier_names

/// Verse mode for displaying the text
enum VerseMode {
  /// Indopak mode
  indopak,

  /// Uthmani mode
  uthmani,

  /// Uthmani with Tajweed mode
  uthmaniTajweed,

  /// Imlaei mode
  imlaei
}

/// Translation type
enum TranslationType {
  /// English by MAS Abdel Haleem
  enMASAbdelHaleem,

  /// Indonesian by Indonesian Islamic Affairs Ministry
  idIndonesianIslamicAffairsMinistry,

  /// French by Montada Islamic Foundation
  frMontadaIslamicFoundation,

  /// Turkish by Dar Al Salam Center
  trDarAlSalamCenter
}

/// Extension for translation type
extension TranslationTypeExtension on TranslationType {
  /// Get language code from translation type
  String get languageCode => name.substring(0, 2);
}

/// Audio Edition from Islamic Network
enum AudioEdition {
  /// ar.abdulbasitmurattal
  ar_abdulbasitmurattal,

  /// ar.abdullahbasfar
  ar_abdullahbasfar,

  /// ar.abdullahbasfar
  ar_abdurrahmaansudais,

  /// ar.abdulsamad
  ar_abdulsamad,

  /// ar.shaatree
  ar_shaatree,

  /// ar.ahmedajamy
  ar_ahmedajamy,

  /// ar.alafasy
  ar_alafasy,

  /// ar.hanirifai
  ar_hanirifai,

  /// ar.husary
  ar_husary,

  /// ar.husarymujawwad
  ar_husarymujawwad,

  /// ar.hudhaify
  ar_hudhaify,

  /// ar.ibrahimakhbar
  ar_ibrahimakhbar,

  /// ar.mahermuaiqly
  ar_mahermuaiqly,

  /// ar.minshawi
  ar_minshawi,

  /// ar.minshawimujawwad
  ar_minshawimujawwad,

  /// ar.muhammadayyoub
  ar_muhammadayyoub,

  /// ar.muhammadjibreel
  ar_muhammadjibreel,

  /// ar.saoodshuraym
  ar_saoodshuraym,

  /// en.walk
  en_walk,

  /// fa.hedayatfarfooladvand
  fa_hedayatfarfooladvand,

  /// ar.parhizgar
  ar_parhizgar,

  /// ur.khan
  ur_khan,

  /// zh.chinese
  zh_chinese,

  /// fr.leclerc
  fr_leclerc,

  /// ar.aymanswoaid
  ar_aymanswoaid;
}

/// An error message
class ErrorMessages {
  /// Error for Juz number out of range
  static String juzNumberOutOfRange = "Juz number out of range";

  /// Error for chapter number out of range
  static String chapterNumberOutOfRange = "Chapter number out of range";

  /// Error for verse number out of range
  static String verseNumberOutOfRange = "Verse number out of range";

  /// Error for chapter number and verse number invalid
  static String chapterNumberAndVerseNumberInvalid =
      "Invalid chapter number and/or verse number";

  /// Error for verse key invalid
  static String verseKeyInvalid = "Invalid verse key";
}
