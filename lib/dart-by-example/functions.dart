import 'package:args/command_runner.dart';

// A simple function definition
dynamic yell(str) => str.toUpperCase();

// Functions can have type annotations
List lines(String str) {
  return str.split('\n');
}


class FunctionsCommand extends Command {
  @override
  final name = 'dart-by-example:functions';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/functions/';

  @override
  void run() {
    var poemLines = lines(poem);
    print(yell(poemLines.first));

    // functions are first-class
    var whisper = (dynamic str) => str.toLowerCase();
    print(poemLines.map(whisper).last);
  }
}

const poem = '''
The wren
Earns his living
Noiselessly.''';