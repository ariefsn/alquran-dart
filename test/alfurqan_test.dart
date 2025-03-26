import 'package:alfurqan/alfurqan.dart';
import 'package:alfurqan/constant.dart';
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
      var res = AlQuran.arabicNumber(123);
      expect(res, '۱۲۳');

      res = AlQuran.arabicNumber(512);
      expect(res, '۵۱۲');

      res = AlQuran.arabicNumber(2048);
      expect(res, '۲۰٤٨');
    });
  });

  group('AlQuran > JUZ', () {
    test('> Get', () {
      final res = AlQuran.juz(114, 1);
      expect(res.number, 30);
      expect(res.verse.count, 564);
    });
  });

  group('AlQuran > CHAPTER', () {
    test('> Get', () {
      final res = AlQuran.chapter(114);
      expect(res.nameSimple, 'An-Nas');
      expect(res.translatedName["id"], "Umat Manusia");
      expect(res.versesCount, 6);
    });
  });

  group('AlQuran > VERSE', () {
    test('> Get', () {
      final res = AlQuran.verse(1, 2);
      expect(res.chapterID, 1);
      expect(res.verseKey, '1:2');
      expect(res.juzNumber, 1);
    });

    test('> Get Translation', () {
      final res = AlQuran.translation(
          TranslationType.idIndonesianIslamicAffairsMinistry, '1:2');
      expect(res.verseKey, '1:2');
      expect(res.text, 'Segala puji bagi Allah, Tuhan seluruh alam,');
      expect(res.resourceID, 33);
      expect(res.languageName, 'indonesian');
    });
  });
}
