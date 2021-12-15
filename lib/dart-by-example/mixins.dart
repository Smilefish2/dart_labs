import 'dart:math';

import 'package:args/command_runner.dart';

class Position {
  int x;
  int y;

  double distanceTo(Position other) {
    var dx = other.x - x;
    var dy = other.y - y;
    return sqrt(dx * dx + dy * dy);
  }
}

class Square {
  int width;
  int height;

  int get area => width * height;
}

// Classes can be mixed in using 'with'
class SquareView extends Square with Position {}

class MixinsCommand extends Command {
  @override
  final name = 'dart-by-example:mixins';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/mixins/';

  @override
  void run() {
    var origin = Position()
      ..x = 0
      ..y = 0;

    var square = SquareView()
      ..x = 5
      ..y = 5
      ..width = 10
      ..height = 10;

    print(square.distanceTo(origin));
    print(square.area);
  }
}