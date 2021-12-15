import 'package:args/command_runner.dart';

class ForCommand extends Command {
  @override
  final name = 'dart-by-example:for';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/for/';

  @override
  void run() {
    // A standard for loop
    for (var i = 0; i < 3; i++) {
      print(i);
    }

    // 'for-in' can be used on any class that implements Iterable
    var collection = [3, 4, 5];
    for (var x in collection) {
      print(x);
    }

    // Closures will capture the value of the index (Dart is lexically scoped)
    var callbacks = [];
    for (var i = 6; i < 8; i++) {
      callbacks.add(() => print(i));
    }
    callbacks.forEach((c) => c()); // invoke each callback
  }
}