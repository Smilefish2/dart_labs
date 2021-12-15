import 'package:args/command_runner.dart';

class SwitchCommand extends Command {
  @override
  final name = 'dart-by-example:switch';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/switch/';

  @override
  void run() {
    // a typical switch statement
    var piece = 'knight';
    switch(piece) {
      case 'bishop':
        print('diagonal');
        break;
      case 'knight':
        print('L-shape');
        break;
      default:
        print('checkmate');
    }

    // cases can only fall through if they are empty:
    piece = 'queen';
    switch(piece) {
      case 'queen':
      case 'bishop':
        print('diagonal');
        break;
    }
  }
}