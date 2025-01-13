import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';

@immutable
final class AlgorithmsUtility {
  const AlgorithmsUtility._();

  static int getNumberWhereStrConvertedWZeroFromInput(String? input) {
    final RegExp regex = RegExp(r'\d');
    if(!regex.hasMatch(input ?? "0")) {
      return 0;
    }
    return int.parse(input ?? "0");
  }

  static void debugPrintWhereConsoleFromThisClassAndText(Object thisClass, String text) {
    debugPrint("\n${thisClass.runtimeType} - Build: $text");
  }
}