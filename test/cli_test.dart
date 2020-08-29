import 'package:cli/cli.dart';
import 'package:test/test.dart';

void main() {
  test('calculate', () {
    expect(calculate(['1', '2', '3.4']), 6.4);
  });

  test('calculate zero', () {
    expect(calculate([]), 0);
  });

  test('add', () {
    expect(calculate(['1', '2', '3.4'], ADD), 6.4);
  });

  test('multiply', () {
    expect(calculate(['1', '2', '3.4'], MULTIPLY), 6.8);
  });

  test('totalStatement', () {
    expect(totalStatement(['1', '2', '3.4']), 'Total: 6.4');
  });

  test('totalStatement', () {
    expect(totalStatement(['1', '2', '3.4', '--mode', 'multiply']), 'Total: 6.8');
  });
}
