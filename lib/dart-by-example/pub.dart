import 'package:args/command_runner.dart';

class PubCommand extends Command {
  @override
  final name = 'dart-by-example:pub';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/pub/';

  @override
  void run() {
    print('参见：https://www.jpryan.me/dartbyexample/examples/pub/');
  }
}