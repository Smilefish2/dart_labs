import 'dart:math';

import 'package:args/command_runner.dart';

class Position {
  int _x;
  int _y;

  Position(this._x, this._y);

  double get rad => atan2(_y, _x);

  void set x(int val) {
    _x = val;
  }
}

class GettersSettersCommand extends Command {
  @override
  final name = 'dart-by-example:getters_setters';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/getters_setters/';

  @override
  void run() {
    var p = Position(2, 3);
    p.x = 10;
    print('x: ${p._x} y: ${p._y}');
    print('rad: ${p.rad}');
  }
}