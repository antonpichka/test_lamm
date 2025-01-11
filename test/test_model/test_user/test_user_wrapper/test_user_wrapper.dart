import 'package:test/test.dart';
import 'package:test_lamm/model/user/user_wrapper/user_wrapper.dart';

void main() {
  test("createModel", () {
    final userWrapper = UserWrapper([
      "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
      DateTime.fromMillisecondsSinceEpoch(1736516582),
      "Discord"
    ]);
    final createModel = userWrapper.createModel();
    expect('User(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord)', createModel.toString());
  });
}