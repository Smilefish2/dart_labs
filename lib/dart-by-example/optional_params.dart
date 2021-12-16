import 'package:args/command_runner.dart';

// an ordered optional parameter
String yell(String str, [bool exclaim = false]) {
  var result = str.toUpperCase();
  if (exclaim) result = result + '!!!';
  return result;
}

// named optional parameters
String whisper(String str, {bool mysteriously = false}) {
  var result = str.toLowerCase();
  if (mysteriously) result = result + '...';
  return result;
}

class OptionalParamsCommand extends Command {
  @override
  final name = 'dart-by-example:optional_params';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/optional_params/';

  @override
  void run() {
    print(yell('Hello, World'));
    print(yell('Hello, World', true));
    print(whisper('Hello, World', mysteriously: true));
  }
}