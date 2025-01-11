import 'package:test/test.dart';
import 'package:test_lamm/model/discord_user/discord_user_wrapper/list_discord_user_wrapper.dart';

void main() {
  test("createListModel", () {
    final listDiscordUserWrapper = ListDiscordUserWrapper([
      [
        "a55cacfa-cf72-11ef-9cd2-0242ac120002",
        "9913e426-cf6e-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
        "152637495245674275",
        "top1",
        "TheTop1"
      ],
      [
        "a55cacfa-cf72-11ef-9cd2-0242ac120002",
        "9913e426-cf6e-11ef-9cd2-0242ac120002",
        DateTime.fromMillisecondsSinceEpoch(1736516582),
        "Discord",
        "152637495245674275",
        "top1",
        "TheTop1"
      ]
    ]);
    final createListModel = listDiscordUserWrapper.createListModel();
    expect('ListDiscordUser(listModel: [\n'
        'DiscordUser(uniqueId: a55cacfa-cf72-11ef-9cd2-0242ac120002, user: User(uniqueId: 9913e426-cf6e-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), id: 152637495245674275, username: top1, globalName: TheTop1),\n'
        'DiscordUser(uniqueId: a55cacfa-cf72-11ef-9cd2-0242ac120002, user: User(uniqueId: 9913e426-cf6e-11ef-9cd2-0242ac120002, creationAt: 1970-01-21 05:21:56.582, authorizationType: Discord), id: 152637495245674275, username: top1, globalName: TheTop1),\n'
        '])', createListModel.toString());
  });
}