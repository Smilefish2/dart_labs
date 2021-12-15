import 'package:args/command_runner.dart';

Stream numbersDownFrom(int n) async* {
  if (n >= 0) {
    await Future.delayed(Duration(milliseconds: 100));
    yield n;
    yield* numbersDownFrom(n - 1);
  }
}

class YieldStarCommand extends Command {
  @override
  final name = 'dart-by-example:yield_star';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/yield_star/';

  @override
  void run() async {
    await for (int i in numbersDownFrom(5)) {
      print('$i bottles of beer');
    }
  }
}