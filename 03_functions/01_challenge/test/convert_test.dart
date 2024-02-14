import 'package:test/test.dart';

// Assuming your original code is in 'main.dart' or adjust the import accordingly
import '../convert.dart';

void main() {
  group('convert', () {
    test('correctly converts list of maps to list of lists for the default provided keys', () {
      var p1 = {"name": "Walkman", "price": 19.99};
      var p2 = {"name": "Toothpaste", "price": 2.99};

      var listOfMaps = [p1, p2];

      // The expected output based on your function's logic
      var expectedOutput = [
        ["Walkman", 19.99],
        ["Toothpaste", 2.99]
      ];

      // Actual call to your function
      var result = convert(listOfMaps);

      // Check if the result matches the expected output
      expect(result, equals(expectedOutput));
    });

    test('the input list of maps is initially empty', () {
      expect(convert([]), isEmpty);
    });
    test('handles maps with different keys and values', () {
      var p1 = {"name": "Pen", "price": 1.20};
      var p2 = {"brand": "Acme", "id": 123, "available": true};
      var listOfMaps = [p1, p2];

      var expectedOutput = [
        ["Pen", 1.20],
        ["Acme", 123, true]
      ];

      expect(convert(listOfMaps), equals(expectedOutput));
    });
  });
}
