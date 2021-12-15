import 'dart:async';

import 'package:args/command_runner.dart';

class StreamsCommand extends Command {
  @override
  final name = 'dart-by-example:streams';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/streams/';

  @override
  void run() {
    // creates a single subscription stream
    Stream.fromIterable([1, 3, 5]).listen((i) {
      print('s1: $i');
    });

    // New streams can created from other streams, using
    // using methods like where(), map(), expand(), take(), or skip()
    Stream.periodic(Duration(milliseconds: 300))
        .take(3)
        .listen((_) => print('s2: tick!'));

    Stream.fromIterable([1, 2, 5]).map((n) => n * 2).listen((n) => print('s3: $n'));

    // Broadcast streams can be listened to by multiple consumers.
    var sc = StreamController.broadcast();
    var broadcastStream = sc.stream;
    broadcastStream.listen((v) => print('s4: $v'));
    broadcastStream.listen((v) => print('s4: $v'));
    sc.add(1);
    sc.add(2);
  }
}