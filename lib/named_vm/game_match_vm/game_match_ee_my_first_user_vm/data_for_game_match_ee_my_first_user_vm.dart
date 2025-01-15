import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_first_user_vm/enum_data_for_game_match_ee_my_first_user_vm.dart';

final class DataForGameMatchEEMyFirstUserVM extends BaseDataForNamed<EnumDataForGameMatchEEMyFirstUserVM> {
  final Token token;
  final UserWUsername userWUsername;
  final String usernameWSecondUser;
  GameMatch gameMatch;

  DataForGameMatchEEMyFirstUserVM(super.isLoading, this.token, this.userWUsername, this.usernameWSecondUser, this.gameMatch);

  @override
  EnumDataForGameMatchEEMyFirstUserVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForGameMatchEEMyFirstUserVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForGameMatchEEMyFirstUserVM.exception;
    }
    return EnumDataForGameMatchEEMyFirstUserVM.first;
  }

  @override
  String toString() {
    return "DataForGameMatchEEMyFirstUserVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "userWUsername: $userWUsername, "
        "usernameWSecondUser: $usernameWSecondUser, "
        "gameMatch: $gameMatch)";
  }
}