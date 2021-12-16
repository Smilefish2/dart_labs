import 'package:args/command_runner.dart';

class Position {
  final int x;
  final int y;
  Position(this.x) : y = 0;
}


// Final objects are immutable
class FinalCommand extends Command {
  @override
  final name = 'dart-by-example:final';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/final/';

  @override
  void run() {
    // final variables are single-assignment:
    final foo = 'hello';

    try {
      // foo = 'goodbye'; // runtime error; already assigned
      print(foo);
    } catch(e) {
      print('error');
    }

    var pos = Position(4);

    try {
      // pos.x = 100; // runtime error
      print(pos);
    } catch(e) {
      print('error');
    }

  }
}