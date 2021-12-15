import 'package:args/command_runner.dart';

import 'libraries/utils.dart';

class LibrariesCommand extends Command {
  @override
  final name = 'dart-by-example:libraries';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/libraries/';

  @override
  void run() {
    print(shout('Welcome'));
    print(whisper('Welcome'));
  }
}