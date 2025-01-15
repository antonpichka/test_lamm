import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/game_match_w_username/game_match_w_username.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/game_match_vm/enum_data_for_game_match_vm.dart';

final class DataForGameMatchVM extends BaseDataForNamed<EnumDataForGameMatchVM> {
  final Token token;
  final UserWUsername userWUsername;
  GameMatchWUsername gameMatchWUsername;

  DataForGameMatchVM(super.isLoading, this.token, this.userWUsername, this.gameMatchWUsername);

  @override
  EnumDataForGameMatchVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForGameMatchVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForGameMatchVM.exception;
    }
    if(userWUsername.username == gameMatchWUsername.usernameWFirstUser) {
      return EnumDataForGameMatchVM.myFirstUser;
    }
    return EnumDataForGameMatchVM.mySecondUser;
  }

  @override
  String toString() {
    return "DataForGameMatchVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "userWUsername: $userWUsername, "
        "gameMatchWUsername: $gameMatchWUsername)";
  }
}