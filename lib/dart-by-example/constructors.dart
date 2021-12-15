import 'package:args/command_runner.dart';

class Position {
  int x;
  int y;

  // A simple constructor
  Position(this.x, this.y);

  // Additional constructors can be defined using named constructors
  Position.atOrigin() {
    x = 0;
    y = 0;
  }

  // Factory constructors
  factory Position.fromMap(Map m) {
    return Position(m['x'], m['y']);
  }

  String toString() => '[$x, $y]';
}

class ConstructorsCommand extends Command {
  @override
  final name = 'dart-by-example:constructors';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/constructors/';

  @override
  void run() {
    print(Position(30, 40));
    print(Position.atOrigin());
    print(Position.fromMap({'x': 4, 'y': 100}));
  }
}