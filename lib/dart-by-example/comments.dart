import 'package:args/command_runner.dart';

/// Represents a two-dimensional position
/// has [x] and [y] properties
///
/// example code can be defined using a four-space indent:
///
///     var p = new Position();
///
class Position {
  /*
  multi-line comments
   */
  int x;

  // A regular comment
  int y;
}

class CommentsCommand extends Command {
  @override
  final name = 'dart-by-example:comments';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/comments/';

  @override
  void run() {
    print(Position().runtimeType);
  }
}