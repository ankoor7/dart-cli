import 'package:args/args.dart';

const ADD = 'add';
const MULTIPLY = 'multiply';

double calculate(List<String> arguments, [mode=ADD]) {
  return arguments.isNotEmpty
      ? arguments
      .map((val) => double.parse(val))
      .reduce(arithmeticModes[mode])
      : 0;
}

Map<String, Function> arithmeticModes = {
  ADD: (double a, double b) => a + b,
  MULTIPLY: (double a, double b) => a * b,
};

var parser = ArgParser()
  ..addOption('mode', abbr: 'm', allowed: arithmeticModes.keys, defaultsTo: ADD);

String totalStatement(arguments) {
  var args = parser.parse(arguments);
  return 'Total: ${calculate(args.rest, args['mode']).toString()}';
}



