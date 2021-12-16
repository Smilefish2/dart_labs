import 'dart:async';

import 'package:args/command_runner.dart';


class MicroTasksCommand extends Command {
  @override
  final name = 'dart-by-example:microtasks';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/microtasks/';

  @override
  void run() {

    // Future() schedules a task on the event queue:
    Future(() => print('world'));
    print('hello');

    // scheduleMicrotask() will add the task to the microtask queue:
    // Tasks on the microtask queue are executed before the next
    // run-loop on the event queue.
    scheduleMicrotask(() => print('beautiful'));

    print('there');
  }
}