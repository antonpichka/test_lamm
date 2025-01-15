import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/search_game/search_game.dart';
import 'package:test_lamm/model/stats/stats.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/search_game_vm/enum_data_for_search_game_vm.dart';

final class DataForSearchGameVM extends BaseDataForNamed<EnumDataForSearchGameVM> {
  final Token token;
  final UserWUsername userWUsername;
  Stats stats;
  SearchGame searchGame;
  UserWUsername userWUsernameWEnemy;
  Stats statsWEnemy;

  DataForSearchGameVM(super.isLoading, this.token, this.userWUsername, this.stats, this.searchGame, this.userWUsernameWEnemy, this.statsWEnemy);

  @override
  EnumDataForSearchGameVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForSearchGameVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForSearchGameVM.exception;
    }
    if(searchGame.isWhereTrueAndFalseParametersIsAcceptedAndIsAcceptedWEnemy()) {
      return EnumDataForSearchGameVM.acceptanceWEnemy;
    }
    if(searchGame.isWhereTrueAndIsEmptyByUniqueIdParametersIsSearchingAndUserWEnemy()) {
      return EnumDataForSearchGameVM.searchMode;
    }
    if(searchGame.isWhereTrueAndIsNotEmptyByUniqueIdParametersIsSearchingAndUserWEnemy()) {
      return EnumDataForSearchGameVM.acceptanceMode;
    }
    return EnumDataForSearchGameVM.navigation;
  }

  @override
  String toString() {
    return "DataForSearchGameVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "userWUsername: $userWUsername, "
        "stats: $stats, "
        "searchGame: $searchGame, "
        "userWUsernameWEnemy: $userWUsernameWEnemy, "
        "statsWEnemy: $statsWEnemy)";
  }

  String get getStringParametersUserWUsernameAndStats {
    return "$userWUsername - $stats";
  }

  String get getStringWhereStrMyUserParametersUserWUsernameWEnemyAndStatsWEnemy {
    return "$getStringParametersUserWUsernameAndStats --- $userWUsernameWEnemy - $statsWEnemy";
  }

  bool isWhereEqualsOneFromNumber(int number) {
    return number == 1;
  }

  bool isWhereEqualsTwoFromNumber(int number) {
    return number == 2;
  }

  bool isWhereIsEmptyByUniqueIdFromStats(Stats stats) {
    return stats.uniqueId.isEmpty;
  }
}