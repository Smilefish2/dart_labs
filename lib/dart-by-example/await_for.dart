import 'package:args/command_runner.dart';

Stream numbersDownFrom(int n) async* {
  while (n >= 0) {
    await Future.delayed(Duration(milliseconds: 100));
    yield n--;
  }
}

class AwaitForCommand extends Command {
  @override
  final name = 'dart-by-example:await_for';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/await_for/';

  @override
  void run() async {
    await for (int i in numbersDownFrom(5)) {
      print('$i bottles of beer');
    }
  }
}