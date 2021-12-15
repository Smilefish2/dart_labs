import 'package:args/command_runner.dart';

class IteratorsCommand extends Command {
  @override
  final name = 'dart-by-example:iterators';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/iterators/';

  @override
  void run() {
    var iter = [1,5,10].iterator;
    while(iter.moveNext()) {
      print(iter.current);
    }

    var iterable = new Iterable.generate(3);
    var iter2 = iterable.map((n) => n*2).iterator;
    while(iter2.moveNext()) {
      print(iter2.current);
    }
  }
}