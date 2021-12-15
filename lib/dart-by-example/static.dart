import 'package:args/command_runner.dart';

class Position {
  // a static function
  static int get maxX => 100;

  // a static property
  static int maxY = 200;
}

class StaticCommand extends Command {
  @override
  final name = 'dart-by-example:static';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/static/';

  @override
  void run() {
    print(Position.maxX);
    print(Position.maxY);
  }
}