# Al Quran

> Al Quran verses, translations, juzs and chapters. Offline 🎉.

## Features

- Offline 🚀. Use it locally, not need to fetch from internet. Source from [Quran Foundation](https://quran.foundation).
- Multiple verse text mode available (indopak, uthmani, uthmanyTajweed, and imlaei).
- Chapter translated names (🇮🇩, 🇬🇧, 🇸🇦, 🇹🇷, 🇫🇷)
- Chapter revelations
- Verse translations
  - 🇮🇩: Indonesian Islamic Affairs Ministry
  - 🇬🇧: MAS Abdel Haleem
  - 🇹🇷: Dar Al-Salam Center
  - 🇫🇷: Montada Islamic Foundation
- Generate URL for Audio and Image. Based on [Islamic Network](https://islamic.network).

## Install

1. Add `alquran` as a dependency in your pubspec.yaml.

    ```yaml
    dependencies:
      alquran: any
    ```

2. Install it

    ```shell
    flutter pub get
    ```

3. And import it

    ```dart
    import 'package:alfurqan/alfurqan.dart';
    ```

### Usage

- Basmallah

  ```dart
  final basmallah = AlQuran.basmallah;
  print(basmallah); // بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ
  ```

- Total Juz

  ```dart
  final totalJuz = AlQuran.totalJuz;
  print(totalJuz); // 30
  ```

- Total Chapter

  ```dart
  final totalChapter = AlQuran.totalChapter;
  print(totalChapter); // 114
  ```

- Total Madani

  ```dart
  final totalMadani = AlQuran.totalMadaniSurah;
  print(totalMadani); // 28
  ```

- Total Makki

  ```dart
  final totalMakki = AlQuran.totalMakkiSurah;
  print(totalMakki); // 86
  ```

- Total Verse

  ```dart
  final totalVerse = AlQuran.totalVerse;
  print(totalVerse); // 6236
  ```

- Juz

  ```dart
  final juz = AlQuran.getJuz(1, 1);
  print(juz);
  // Juz(
  //   verse: JuzVerse(
  //     first: 1,
  //     last: 148,
  //     count: 148,
  //     items: {
  //       1: 1-7,
  //       2: 1-141
  //     }
  //   ),
  //   id: 1,
  //   number: 1
  // )
  ```

- Chapter

  ```dart
  final chapter = AlQuran.getChapter(1);
  print(chapter);
  // Chapter(
  //   id: 1,
  //   bismillahPre: false,
  //   nameArabic: "الفاتحة",
  //   nameComplex: "Al-Fātiĥah",
  //   nameSimple: "Al-Fatihah",
  //   pages: [1, 1],
  //   revelationOrder: 5,
  //   revelationPlace: ChapterRevelationPlace.makkah,
  //   translatedName: {
  //     id: "Pembukaan",
  //     en: "The Opener",
  //     ar: "سورة الفاتحة",
  //     tr: "Fâtiha",
  //     fr: "Louverture"
  //   },
  //   versesCount: 7
  // )
  ```

- Verse

  ```dart
  final verse = AlQuran.getVerse(1, 1);
  print(verse);
  // Verse(
  //   id: 1,
  //   verseKey: "1:1",
  //   text: "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ",
  //   chapterID: 1,
  //   pageNumber: 1,
  //   juzNumber: 1
  // );

  // With Mode. Available indopak, uthmani, uthmanyTajweed, and imlaei.
  final verseWithMode = AlQuran.getVerse(
    1,
    1,
    mode: VerseMode.uthmani,
  );
  print(verseWithMode);
  // Verse(
  //   id: 1,
  //   verseKey: "1:1",
  //   text: "بِسْمِ ٱللَّهِ ٱلرَّحْمَـٰنِ ٱلرَّحِيمِ",
  //   chapterID: 1,
  //   pageNumber: 1,
  //   juzNumber: 1,
  // )
  ```

- Translation

  ```dart
  final translation = AlQuran.getTranslation(
      TranslationType.idIndonesianIslamicAffairsMinistry, "1:1");
  print(translation);
  // VerseTranslation(
  //   id: 181444,
  //   verseKey: "1:1",
  //   text: "Dengan nama Allah Yang Maha Pengasih, Maha Penyayang.",
  //   resourceID: 33,
  //   languageName: "indonesian"
  // )
  ```

- Chapter Audio URL

  ```dart
  final chapterAudio = AlQuran.getAudioURLByChapter(1);
  print(chapterAudio); // https://cdn.islamic.network/quran/audio-surah/128/ar.alafasy/1.mp3

  // With Edition
  final chapterAudioWithEdition = AlQuran.getAudioURLByChapter(
    1,
    edition: AudioEdition.ar_husary,
  );
  print(chapterAudioWithEdition); // https://cdn.islamic.network/quran/audio-surah/128/ar.husary/1.mp3
  ```

- Verse Audio URL

  ```dart
  final verseAudio = AlQuran.getAudioURLByVerse(1);
  print(verseAudio); // https://cdn.islamic.network/quran/audio/128/ar.alafasy/1.mp3

  // With Edition
  final verseAudioWithEdition = AlQuran.getAudioURLByVerse(1,
      edition: AudioEdition.ar_husary);
  print(verseAudioWithEdition); // https://cdn.islamic.network/quran/audio/128/ar.husary/1.mp3
  ```

- Verse Image URL

  ```dart
  final imageUrl = AlQuran.getImageURLByVerse("1:1");
  print(imageUrl); // https://cdn.islamic.network/quran/images/1_1.png

  // With high quality
  final imageUrlHighQuality = AlQuran.getImageURLByVerse("1:1", highQuality: true);
  print(imageUrlHighQuality); // https://cdn.islamic.network/quran/images/high-resolution/1_1.png
  ```