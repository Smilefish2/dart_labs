import 'package:args/command_runner.dart';

class UnusedVariablesCommand extends Command {
  @override
  final name = 'dart-by-example:unused_variables';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/unused_variables/';

  @override
  void run() {
    for (var i in Iterable.generate(1)) {
      print('not using "i"');
    }

    // using an underscore silences "local variable is not used"
    // warnings when running dartanalyzer
    for (var _ in Iterable.generate(1)) {
      print('no warnings');
    }
  }
}