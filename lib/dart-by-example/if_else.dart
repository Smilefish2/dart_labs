import 'package:args/command_runner.dart';

class IfElseCommand extends Command {
  @override
  final name = 'dart-by-example:if_else';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/ifelse/';

  @override
  void run() {
    if (7 % 2 == 0) {
      print('7 is even');
    } else {
      print('7 is odd');
    }

    if (8 % 4 == 0) {
      print('8 is divisble by 4');
    }

    // ternary operators
    var isAlive = true;
    var monday = isAlive ? 'doctor' : null;
    print('monday appointment: $monday');
  }
}