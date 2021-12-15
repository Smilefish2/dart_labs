import 'dart:collection';

import 'package:args/command_runner.dart';

class QueueCommand extends Command {
  @override
  final name = 'dart-by-example:queue';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/queue/';

  @override
  void run() {
    // Queues are optimized for adding to the head or tail
    // Items cannot be accessed by their index.
    var q = Queue.from([300, 200, 100, 500]);

    // Queues implement Iterable:
    print(q.takeWhile((i) => i > 100));

    // Consuming a queue
    while(q.first > 100) {
      q.removeFirst();
    }
    print(q);
  }
}