import 'package:args/command_runner.dart';
import 'package:ansicolor/ansicolor.dart';

class HelloWorldCommand extends Command {
  @override
  final name = 'dart-by-example:hello_world';
  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/hello_world/';

  HelloWorldCommand();

  @override
  void run() {

    var pen = AnsiPen()..red(bold: true);

    print(pen('Hello, World!'));
  }
}