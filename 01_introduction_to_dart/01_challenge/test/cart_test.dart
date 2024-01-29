import 'package:test/test.dart';
import 'package:test_process/test_process.dart';

void main() {
  test('Total Price Calculation', () async {
    final testProcess = await TestProcess.start('dart', ['cart.dart']);

    await expectLater(
      testProcess.stdout,
      emitsThrough(contains("Total price of all the items you have is \$46")),
    );

    await testProcess.shouldExit(0);
  });
}
