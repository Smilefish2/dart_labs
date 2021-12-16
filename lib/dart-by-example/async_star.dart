import 'package:args/command_runner.dart';

Stream printNumbersDownAsync(int n) async* {
  var k = n;
  while (k >= 0) {
    yield await loadMessageForNumber(k--);
  }
}

Future<String> loadMessageForNumber(int i) async {
  await Future.delayed(Duration(milliseconds: 50));
  if (i % 2 == 0) {
    return '$i is even';
  } else {
    return '$i is odd';
  }
}

class AsyncStarCommand extends Command {
  @override
  final name = 'dart-by-example:async_star';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/async_star/';

  @override
  void run() async {
    await for (String msg in printNumbersDownAsync(5)) {
      print(msg);
    }
  }
}