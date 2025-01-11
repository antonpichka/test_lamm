import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/discord_user_api/discord_user_api.dart';

@immutable
base class DiscordUserAPIWrapper extends BaseModelWrapper {
  const DiscordUserAPIWrapper(super.listObject);

  @override
  DiscordUserAPI createModel() {
    return DiscordUserAPI(
        listObject[0],
        listObject[1],
        listObject[2],
        listObject[3],
        listObject[4],
        listObject[5],
        listObject[6],
        listObject[7],
        listObject[8],
        listObject[9],
        listObject[10]);
  }
}