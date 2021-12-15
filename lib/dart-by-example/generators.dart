import 'package:args/command_runner.dart';

// sync* functions return an iterable
Iterable<int> evenNumbersDownFrom(int n) sync* {
  // the body isn't executed until an iterator invokes moveNext()
  var k = n;
  while (k >= 0) {
    if (k % 2 == 0) {
      // 'yield' suspends the function
      yield k;
    }
    k--;
  }

  // when the end of the function is executed,
  // there are no more values in the Iterable, and
  // moveNext() returns false to the caller
}


class GeneratorsCommand extends Command {
  @override
  final name = 'dart-by-example:generators';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/generators/';

  @override
  void run() {
    evenNumbersDownFrom(7).forEach(print);
  }
}