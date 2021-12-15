import 'dart:math';

import 'package:args/command_runner.dart';


class Position {
  final int x;
  final int y;
  final double rad;

  // An initializer list allows
  // fields to be defined before the constructor body.
  // This is required for final fields.
  Position(int x, int y)
      : x = x,
        y = y,
        rad = atan2(y, x);
}

class InitializerListsCommand extends Command {
  @override
  final name = 'dart-by-example:initializer_lists';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/initializer_lists/';

  @override
  void run() {
    var p = Position(2, 3);
    print('x: ${p.x} y: ${p.y}');
    print('rad: ${p.rad}');
  }
}