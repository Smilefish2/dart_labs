import 'package:args/command_runner.dart';

class ListCommand extends Command {
  @override
  final name = 'dart-by-example:list';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/list/';

  @override
  void run() {
    // Specifying the length creates a fixed-length list.
    // var list = new List(3);
    var list = []..length = 3;
    list[0] = 'a';
    list[1] = 'b';
    list[2] = 'c';
    print(list);

    // Leaving out the lenght creates a growable list.
    // var growable = List();
    var growable = [];
    growable.addAll(['grow', 'able']);
    print(growable);

    // Lists can be defined using bracket literals.
    //
    var list2 = ['also', 'growable'];
    // list2.add(42);
    print(list2);

    // modifying growable lists during iteration can cause ConcurrentModificationErrors
    var list3 = [47, 3, 25];
    try {
      for (var item in list3) {
        if (item < 10) {
          list3.remove(item);
        }
      }
    } catch(e) {
      print('error');
    }
  }
}