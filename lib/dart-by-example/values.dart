import 'package:args/command_runner.dart';

class ValuesCommand extends Command {
  @override
  final name = 'dart-by-example:values';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/values/';

  @override
  void run() {
    // Strings can be appended using +
    print('dart' + 'lang');

    // Integers and Floats
    print('1+1=${1+1}');
    print('7.0/3.0 =${7.0/3.0}');

    // Booleans
    print(true && false);
    print(false || true);
    print(!true);
  }
}