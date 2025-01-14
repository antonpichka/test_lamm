import 'dart:math';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/stats/stats.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:uuid/uuid.dart';

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

  static User getUserWhereGenerated() {
    return User(Uuid().v1(), DateTime.fromMillisecondsSinceEpoch(1736516582), Random().nextInt(2) == 0 ? "Discord" : "Steam");
  }

  static String getStringWhereGeneratedFromStrTemplate(String strTemplate) {
    final List<String> listString = List.generate(100, (index) => "$strTemplate${index + 1}");
    return listString[Random().nextInt(100)];
  }

  static Stats getStatsFromUser(User user) {
    final List<int> listGameMatchesWon = List.generate(50, (index) => index+1);
    final List<int> listGameMatchesLost = List.generate(50, (index) => index+1);
    final List<int> listPoints = List.generate(500, (index) => index+1);
    return Stats(
        Uuid().v1(),
        user,
        Season(
            "1356b4d2-d287-11ef-9cd2-0242ac120002",
            1,
            DateTime.fromMillisecondsSinceEpoch(1736516582),
            DateTime.fromMillisecondsSinceEpoch(1736516582)),
        listGameMatchesWon[Random().nextInt(50)],
        listGameMatchesLost[Random().nextInt(50)],
        listPoints[Random().nextInt(500)]);
  }

  static void debugPrintWhereConsoleFromThisClassAndText(Object thisClass, String text) {
    debugPrint("\n${thisClass.runtimeType} - Build: $text");
  }
}