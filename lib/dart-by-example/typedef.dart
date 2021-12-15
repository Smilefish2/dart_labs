import 'package:args/command_runner.dart';

typedef Validator = bool Function(int n);

bool positive(int n) => n >= 0;
bool lessThan100(int n) => n < 100;

bool bothValid(int n, Validator v1, Validator v2) {
  return v1(n) && v2(n);
}

class TypedefCommand extends Command {
  @override
  final name = 'dart-by-example:typedef';

  @override
  final description = 'https://www.jpryan.me/dartbyexample/examples/typedef/';

  @override
  void run() {
    var both = (int n) => bothValid(n, positive, lessThan100);
    print('${both(5)}');
    print('${both(1000)}');
  }
}