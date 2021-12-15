import 'package:args/command_runner.dart';
import 'package:learn_dart_with_cli/dart-by-example/hello_world.dart';

void main(List<String> arguments) {
  try{
    var runner = CommandRunner('learn-dart-with-cli', 'learn dart with cli')
      ..addCommand(HelloWorldCommand())
      ..run(arguments); // args

  } on Exception catch (error, stackTrace) {
  // 任意一个异常
    print('Unknown exception: $error');
  } catch (error, stackTrace) {
  // 非具体类型
    print('Something really unknown: $error');
  }
}
