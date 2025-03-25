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
  /// ar.Abdulbasitmurattal
  ar_Abdulbasitmurattal,

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
