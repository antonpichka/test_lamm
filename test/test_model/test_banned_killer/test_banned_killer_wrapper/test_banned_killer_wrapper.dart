import 'package:test/test.dart';
import 'package:test_lamm/model/banned_killer/banned_killer_wrapper/banned_killer_wrapper.dart';

void main() {
  test("createModel", () {
    final bannedKillerWrapper = BannedKillerWrapper([
      "2aecb1c2-cf59-11ef-9cd2-0242ac120002",
      [
        "36b12222-cf59-11ef-9cd2-0242ac120002",
        "Trapper",
        "assets/icons/dbd/killer/trapper.png",
      ],
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      [
        "9913e426-cf6e-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord"
      ],
    ]);
    final createModel = bannedKillerWrapper.createModel();
    expect('BannedKiller(uniqueId: 2aecb1c2-cf59-11ef-9cd2-0242ac120002, killer: Killer(uniqueId: 36b12222-cf59-11ef-9cd2-0242ac120002, name: Trapper, imagePath: assets/icons/dbd/killer/trapper.png), creationAt: 1970-01-21 05:21:56.582, user: User(uniqueId: 9913e426-cf6e-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord))', createModel.toString());
  });
}