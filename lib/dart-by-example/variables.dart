import 'package:args/command_runner.dart';

class VariablesCommand extends Command {
  @override
  final name = 'dart-by-example:variables';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/variables/';

  @override
  void run() {
    // 'var' declares a variable.  dartanalyzer infers the type.
    var a = "initial";
    print(a);

    // The type can also be declared:
    num b = 42;
    print(b);

    // final variables cannot be changed once declared
    final num c = 99;
    print(c);

    // const variables are compile-time constants
    const double d = 44.00;
    print(d);
  }
}