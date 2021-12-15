import 'package:args/command_runner.dart';
import 'package:learn_dart_with_cli/dart-by-example/hello_world.dart';
import 'package:learn_dart_with_cli/dart-by-example/values.dart';
import 'package:learn_dart_with_cli/dart-by-example/variables.dart';
import 'package:learn_dart_with_cli/dart-by-example/for.dart';
import 'package:learn_dart_with_cli/dart-by-example/if_else.dart';
import 'package:learn_dart_with_cli/dart-by-example/null_aware.dart';
import 'package:learn_dart_with_cli/dart-by-example/while.dart';
import 'package:learn_dart_with_cli/dart-by-example/switch.dart';
import 'package:learn_dart_with_cli/dart-by-example/exceptions.dart';
import 'package:learn_dart_with_cli/dart-by-example/list.dart';
import 'package:learn_dart_with_cli/dart-by-example/map.dart';
import 'package:learn_dart_with_cli/dart-by-example/set.dart';

void main(List<String> arguments) {
  try{
      // var runner =
      CommandRunner('learn-dart-with-cli', 'learn dart with cli')
      ..addCommand(HelloWorldCommand())
      ..addCommand(ValuesCommand())
      ..addCommand(VariablesCommand())
      ..addCommand(ForCommand())
      ..addCommand(IfElseCommand())
      ..addCommand(NullAwareCommand())
      ..addCommand(WhileCommand())
      ..addCommand(SwitchCommand())
      ..addCommand(ExceptionsCommand())
      ..addCommand(ListCommand())
      ..addCommand(MapCommand())
      ..addCommand(SetCommand())
      ..run(arguments); // args

  } on Exception catch (error, stackTrace) {
  // 任意一个异常
    print('Unknown exception: $error');
    print('Unknown StackTrace: $stackTrace');
  } catch (error, stackTrace) {
  // 非具体类型
    print('Something really unknown: $error');
    print('Something really unknown: $stackTrace');
  }
}
