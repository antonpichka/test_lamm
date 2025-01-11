import 'package:test/test.dart';
import 'package:test_lamm/model/season/season_wrapper/season_wrapper.dart';

void main() {
  test("createModel", () {
    final seasonWrapper = SeasonWrapper([
      "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
      1,
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      DateTime.fromMillisecondsSinceEpoch(1736516582),
    ]);
    final createModel = seasonWrapper.createModel();
    expect('Season(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, seasonNumber: 1, startOfSeasonTime: 1970-01-21 05:21:56.582, endOfSeasonTime: 1970-01-21 05:21:56.582)', createModel.toString());
  });
}