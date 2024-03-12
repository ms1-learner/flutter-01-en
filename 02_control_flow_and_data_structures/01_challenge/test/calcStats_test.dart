import 'package:test/test.dart';
import '../calcStats.dart';

void main() {
  test('Test string manipulation', () {
    var stats = calculateStats();

    expect(stats['longestPhrase'], equals('Connect with like-minded individuals'));
    expect(stats['longestPhraseWithoutVowels'], equals('Cnnct wth lk-mndd ndvdls'));
    expect(stats['longestPhraseLength'], equals(36));
    expect(
        stats['reversedList'],
        equals([
          'Transform ideas into reality',
          'Challenge the status quo',
          'Learn and adapt constantly',
          'Create beautiful experiences',
          'Connect with like-minded individuals',
          'Embrace the journey',
          'Build innovative solutions',
          'Explore new horizons'
        ]));
  });
}
