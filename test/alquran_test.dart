import 'package:alquran/alquran.dart';
import 'package:test/test.dart';

void main() {
  group('AlQuran > COMMON', () {
    test('> Basmallah', () {
      final basmallah = AlQuran.basmallah;
      expect(basmallah, isNotEmpty);
    });

    test('> Total Juz', () {
      final totalJuz = AlQuran.totalJuz;
      expect(totalJuz, 30);
    });

    test('> Total Chapter', () {
      final totalChapter = AlQuran.totalChapter;
      expect(totalChapter, 114);

      final totalMadani = AlQuran.totalMadaniSurah;
      expect(totalMadani, 28);

      final totalMakki = AlQuran.totalMakkiSurah;
      expect(totalMakki, 86);
    });

    test('> Total Verse', () {
      final totalVerse = AlQuran.totalVerse;
      expect(totalVerse, 6236);
    });

    test('> Get Arabic Number', () {
      var res = AlQuran.getArabicNumber(123);
      expect(res, '١٢٣');

      res = AlQuran.getArabicNumber(512);
      expect(res, '٥١٢');

      res = AlQuran.getArabicNumber(2048);
      expect(res, '٢٠٤٨');
    });
  });

  group('AlQuran > JUZ', () {
    test('> Get', () {
      final res = AlQuran.getJuz(114, 1);
      expect(res, isNotNull);
      expect(res?.number, 30);
      expect(res?.verse.count, 564);
    });
  });

  group('AlQuran > CHAPTER', () {
    test('> Get', () {
      final res = AlQuran.getChapter(114);
      expect(res, isNotNull);
      expect(res?.nameSimple, 'An-Nas');
      expect(res?.translatedName["id"], "Umat Manusia");
      expect(res?.versesCount, 6);
    });
  });

  group('AlQuran > VERSE', () {
    test('> Get', () {
      final res = AlQuran.getVerse(1, 2);
      expect(res, isNotNull);
      expect(res?.chapterID, 1);
      expect(res?.verseKey, '1:2');
      expect(res?.juzNumber, 1);
    });

    test('> Get Translation', () {
      final res = AlQuran.getTranslation(
          TranslationType.idIndonesianIslamicAffairsMinistry, '1:2');
      expect(res, isNotNull);
      expect(res?.verseKey, '1:2');
      expect(res?.text, 'Segala puji bagi Allah, Tuhan seluruh alam,');
      expect(res?.resourceID, 33);
      expect(res?.languageName, 'indonesian');
    });
  });
}
