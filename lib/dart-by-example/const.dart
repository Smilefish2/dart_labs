import 'dart:math';

import 'package:args/command_runner.dart';

// compile-time constants are defined using 'const'
const name = 'greg';

// Objects can also be declared at compile-time
const Rectangle bounds = Rectangle(0, 0, 5, 5);

class ConstCommand extends Command {
  @override
  final name = 'dart-by-example:const';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/const/';

  @override
  void run() {
    print(name);
    print(bounds);
  }
}