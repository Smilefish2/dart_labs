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
import 'package:learn_dart_with_cli/dart-by-example/queue.dart';
import 'package:learn_dart_with_cli/dart-by-example/functions.dart';
import 'package:learn_dart_with_cli/dart-by-example/optional_params.dart';
import 'package:learn_dart_with_cli/dart-by-example/lexical_scope.dart';
import 'package:learn_dart_with_cli/dart-by-example/typedef.dart';
import 'package:learn_dart_with_cli/dart-by-example/unused_variables.dart';
import 'package:learn_dart_with_cli/dart-by-example/const.dart';
import 'package:learn_dart_with_cli/dart-by-example/final.dart';
import 'package:learn_dart_with_cli/dart-by-example/static.dart';
import 'package:learn_dart_with_cli/dart-by-example/classes.dart';
import 'package:learn_dart_with_cli/dart-by-example/constructors.dart';
import 'package:learn_dart_with_cli/dart-by-example/initializer_lists.dart';
import 'package:learn_dart_with_cli/dart-by-example/getters_setters.dart';
import 'package:learn_dart_with_cli/dart-by-example/inheritance.dart';
import 'package:learn_dart_with_cli/dart-by-example/mixins.dart';
import 'package:learn_dart_with_cli/dart-by-example/libraries.dart';
import 'package:learn_dart_with_cli/dart-by-example/pub.dart';
import 'package:learn_dart_with_cli/dart-by-example/comments.dart';
import 'package:learn_dart_with_cli/dart-by-example/futures.dart';

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
      ..addCommand(QueueCommand())
      ..addCommand(FunctionsCommand())
      ..addCommand(OptionalParamsCommand())
      ..addCommand(LexicalScopeCommand())
      ..addCommand(TypedefCommand())
      ..addCommand(UnusedVariablesCommand())
      ..addCommand(ConstCommand())
      ..addCommand(FinalCommand())
      ..addCommand(StaticCommand())
      ..addCommand(ClassesCommand())
      ..addCommand(ConstructorsCommand())
      ..addCommand(InitializerListsCommand())
      ..addCommand(GettersSettersCommand())
      ..addCommand(InheritanceCommand())
      ..addCommand(MixinsCommand())
      ..addCommand(LibrariesCommand())
      ..addCommand(PubCommand())
      ..addCommand(CommentsCommand())
      ..addCommand(FuturesCommand())
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
