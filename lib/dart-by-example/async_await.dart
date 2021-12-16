import 'package:args/command_runner.dart';

const Duration delay = Duration(milliseconds: 200);

// This function doesn't use async / await; just the
// standard Future API
Future loadLastName(String firstName) {
  return Future.delayed(delay).then((_) {
    return firstName + 'son';
  });
}

// Marking a function with 'async' will return a future
// that completes with the returned value.
// This function is equivalent to [loadLastName]
Future loadLastName2(String firstName) async {
  await Future.delayed(delay);

  return firstName + 'son';
}

class AsyncAwaitCommand extends Command {
  @override
  final name = 'dart-by-example:async_await';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/async_await/';

  @override
  void run() async {
    // 'await' will suspend execution of the function until the
    // future completes:
    var gregLastName = await loadLastName('greg');
    var steveLastName = await loadLastName2('steve');

    print('greg $gregLastName');
    print('steve $steveLastName');
  }
}