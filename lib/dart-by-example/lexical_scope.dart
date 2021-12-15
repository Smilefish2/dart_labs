import 'package:args/command_runner.dart';


// Dart is a lexically scoped language.
// Loops that declare their variable will have a new version of that variable for each iteration.

class LexicalScopeCommand extends Command {
  @override
  final name = 'dart-by-example:lexical_scope';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/lexical_scope/';

  @override
  void run() {
    var functions = [];

    for (var i = 0; i < 3; i++) {
      functions.add(() => i);
    }

    functions.forEach((fn) => print(fn()));
  }


  // $ dart lexical_scope.dart
  // 0
  // 1
  // 2
  // Compared to javascript:
  //
  // var functions = [];
  //
  // for (var i = 0; i < 3; i++) {
  // functions[i] = function() { return i };
  // }
  //
  // functions.forEach(function (fn) { console.log(fn())});
  //
  // $ node lexical_scope.js
  // 3
  // 3
  // 3

}