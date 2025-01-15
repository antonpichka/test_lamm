import 'package:test/test.dart';
import 'package:test_lamm/model/user_w_username/user_w_username_wrapper/user_w_username_wrapper.dart';

void main() {
  test("createModel", () {
    final userWUsernameWrapper = UserWUsernameWrapper([
      "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
      [
        "928dc6a2-d1b3-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
      ],
      "Top1"
    ]);
    final createModel = userWUsernameWrapper.createModel();
    expect('UserWUsername(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, user: User(uniqueId: 928dc6a2-d1b3-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), username: Top1)', createModel.toString());
  });
}