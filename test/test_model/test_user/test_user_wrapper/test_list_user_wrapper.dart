import 'package:test/test.dart';
import 'package:test_lamm/model/user/user_wrapper/list_user_wrapper.dart';

void main() {
  test("createListModel", () {
    final listUserWrapper = ListUserWrapper([
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord"
      ],
      [
        "8fbd97a0-cfc3-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord"
      ]
    ]);
    final createListModel = listUserWrapper.createListModel();
    expect('ListUser(listModel: [\n'
        'User(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord),\n'
        'User(uniqueId: 8fbd97a0-cfc3-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord),\n'
        '])', createListModel.toString());
  });
}