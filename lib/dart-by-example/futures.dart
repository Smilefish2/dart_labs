import 'package:args/command_runner.dart';

Future<String> get onReady {
  var dur = Duration(seconds: 1);
  var oneSecond = Future.delayed(dur);

  // then() returns a new future that completes
  // with the value of the callback.
  return oneSecond.then((_) {
    return 'loaded!';
  });
}

class FuturesCommand extends Command {
  @override
  final name = 'dart-by-example:futures';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/futures/';

  @override
  void run() {
    // Passing a callback to then() will invoke
    // that callback when the future completes
    onReady.then((String status) {
      print(status);
    });

    // Futures can be chained:
    onReady
        .then(print)
        .then((_) => print('done!'));

    // Futures can throw errors:
    onReady.catchError(() {
      print('error!');
    });
  }
}