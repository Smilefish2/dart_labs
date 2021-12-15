import 'dart:math';

import 'package:args/command_runner.dart';

class Position {
  // properties
  int x;
  int y;

  // methods
  double distanceTo(Position other) {
    var dx = other.x - x;
    var dy = other.y - y;
    return sqrt(dx * dx + dy * dy);
  }
}

class ClassesCommand extends Command {
  @override
  final name = 'dart-by-example:classes';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/classes/';

  @override
  void run() {
    var origin = Position()
      ..x = 0
      ..y = 0;

    var p = Position()
      ..x = -5
      ..y = 6;

    print(origin.distanceTo(p));
  }
}