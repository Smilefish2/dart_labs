import 'package:args/command_runner.dart';

class WhileCommand extends Command {
  @override
  final name = 'dart-by-example:while';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/while/';

  @override
  void run() {
    var i = 0;

    // while conditions are evaluated before the loop
    while(i++ < 2) {
      print('while $i');
    }

    var j = 0;

    // do-while conditions are evaluated after the loop
    do {
      print('dowhile $j');
    } while (j++ < 2);
  }
}