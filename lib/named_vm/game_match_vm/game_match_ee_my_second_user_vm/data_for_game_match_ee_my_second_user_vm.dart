import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_second_user_vm/enum_data_for_game_match_ee_my_second_user_vm.dart';

final class DataForGameMatchEEMySecondUserVM extends BaseDataForNamed<EnumDataForGameMatchEEMySecondUserVM> {
  final Token token;
  final UserWUsername userWUsername;
  final String usernameWFirstUser;
  GameMatch gameMatch;

  DataForGameMatchEEMySecondUserVM(super.isLoading, this.token, this.userWUsername, this.usernameWFirstUser, this.gameMatch);

  @override
  EnumDataForGameMatchEEMySecondUserVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForGameMatchEEMySecondUserVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForGameMatchEEMySecondUserVM.exception;
    }
    return EnumDataForGameMatchEEMySecondUserVM.second;
  }

  @override
  String toString() {
    return "DataForGameMatchEEMySecondUserVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController)";
  }
}