import 'package:args/command_runner.dart';

/// Abstract classes can't be instantiated,
/// but can contain some implementation.
abstract class Animal {
  String name;
  Animal(this.name);
  String get noise;
}

/// Classes can be extended to share functionality
class Dog extends Animal {
  Dog(String name) : super(name);
  @override
  String get noise => 'bark!';
}

/// Classes can implement other classes if they
/// define all of the fields
class Pikachu implements Animal {
  @override
  String name = 'Pikachu';
  @override
  String get noise => 'pika!';
}

void releaseAnimals(Iterable animals) {
  animals.forEach((a) => print('${a.name} has been released: ${a.noise}'));
}

class InheritanceCommand extends Command {
  @override
  final name = 'dart-by-example:inheritance';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/inheritance/';

  @override
  void run() {
    var barry = Dog('Barry');
    var pika = Pikachu();
    releaseAnimals([barry, pika]);
  }
}