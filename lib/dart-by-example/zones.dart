import 'dart:async';

import 'package:args/command_runner.dart';

Future runServer() async {
  await for (var r in requests()) {
    print('received request: $r');
    if (r == 'bar') throw('unrecognized request: $r');
  }
}

Stream<String> requests() async* {
  var dur = Duration(milliseconds: 100);

  await Future.delayed(dur);
  yield 'foo';

  await Future.delayed(dur);
  yield 'bar';
}

class ZonesCommand extends Command {
  @override
  final name = 'dart-by-example:zones';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/zones/';

  @override
  void run() {
    // All Dart programs implicitly run in a root zone.
    // runZoned creates a new zone.  The new zone is a child of the root zone.
    runZoned(() async {
        await runServer();
      },
        // Any uncaught errors in the child zone are sent to the [onError] handler.
        onError: (e, stacktrace) {
          print('caught: $e');
        },
        // a ZoneSpecification allows for overriding functionality, like print()
        zoneSpecification: ZoneSpecification(print: (Zone self, ZoneDelegate parent, Zone zone, String message) {
          parent.print(zone, '${DateTime.now()}: $message');
        })
    );

  }
}