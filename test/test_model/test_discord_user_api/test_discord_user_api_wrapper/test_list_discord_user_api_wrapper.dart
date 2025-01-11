import 'package:test/test.dart';
import 'package:test_lamm/model/discord_user_api/discord_user_api_wrapper/list_discord_user_api_wrapper.dart';

void main() {
  test("createListModel", () {
    final listDiscordUserAPIWrapper = ListDiscordUserAPIWrapper([
      [
        "80351110224678912",
        "Nelly",
        "1337",
        "8342729096ea3675442027381ff50dfe",
        true,
        "nelly@discord.com",
        64,
        "06c16474723fe537c283b8efa61a30c8",
        16711680,
        1,
        64
      ],
      [
        "80351110224678912",
        "Nelly",
        "1337",
        "8342729096ea3675442027381ff50dfe",
        true,
        "nelly@discord.com",
        64,
        "06c16474723fe537c283b8efa61a30c8",
        16711680,
        1,
        64
      ]
    ]);
    final createListModel = listDiscordUserAPIWrapper.createListModel();
    expect('ListDiscordUserAPI(listModel: [\n'
        'DiscordUserAPI(id: 80351110224678912, username: Nelly, discriminator: 1337, avatar: 8342729096ea3675442027381ff50dfe, verified: true, email: nelly@discord.com, flags: 64, banner: 06c16474723fe537c283b8efa61a30c8, accentColor: 16711680, premiumType: 1, publicFlags: 64),\n'
        'DiscordUserAPI(id: 80351110224678912, username: Nelly, discriminator: 1337, avatar: 8342729096ea3675442027381ff50dfe, verified: true, email: nelly@discord.com, flags: 64, banner: 06c16474723fe537c283b8efa61a30c8, accentColor: 16711680, premiumType: 1, publicFlags: 64),\n'
        '])', createListModel.toString());
  });
}