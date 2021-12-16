import 'package:args/command_runner.dart';

class MapCommand extends Command {
  @override
  final name = 'dart-by-example:map';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/map/';

  @override
  void run() {
    // adding keys
    var colors = {};
    colors['blue'] = false;
    colors['red'] = true;
    print(colors);

    // curly bracket literals can also be used:
    var shapes = {
      'square': false,
      'triangle': true
    };
    print(shapes);

    // keys and values can be iterated.
    // HashMap iterates in arbitrary order, while LinkedHashMap, and SplayTreeMap
    // iterate in the order they were inserted into the map.
    for (var key in shapes.keys) {
      print(key);
    }
    for (var value in shapes.values) {
      print(value);
    }
  }
}