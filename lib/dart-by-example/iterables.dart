import 'package:args/command_runner.dart';

class IterablesCommand extends Command {
  @override
  final name = 'dart-by-example:iterables';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/iterables/';

  @override
  void run() {
    // Iterable is implemented by LinkedList,List, ListQueue, Queue, Runes,
    // Set, and more.
    var set = <dynamic>{}..add('greg')..add('steve');

    for (var name in set) {
      print(name);
    }
  }
}