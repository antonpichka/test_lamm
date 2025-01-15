import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/game_match_w_username/game_match_w_username.dart';
import 'package:test_lamm/model/picked_killer/list_picked_killer.dart';
import 'package:test_lamm/model/round/list_round.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
import 'package:test_lamm/named_utility/keys_temp_cache_provider_utility.dart';
import 'package:test_lamm/named_vm/game_match_vm/data_for_game_match_vm.dart';
import 'package:test_lamm/named_vm/game_match_vm/enum_data_for_game_match_vm.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_first_user_vm/game_match_ee_my_first_user_vm.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_second_user_vm/game_match_ee_my_second_user_vm.dart';

final class GameMatchVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForGameMatchVM> _namedStreamWState;

  GameMatchVM(Token token, UserWUsername userWUsername) {
    _namedStreamWState = lamm.DefaultStreamWState(DataForGameMatchVM(true,token,userWUsername,GameMatchWUsername(GameMatch("",DateTime.fromMillisecondsSinceEpoch(1736516582),false,"",Balance("",Season("",0,DateTime.fromMillisecondsSinceEpoch(1736516582),DateTime.fromMillisecondsSinceEpoch(1736516582)),0,ListBalanceKiller(List.empty(growable: true))),User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""), ListBannedKiller(List.empty(growable: true)), ListPickedKiller(List.empty(growable: true)), ListRound(List.empty(growable: true)),0,0,0,0),"","")));
    _init();
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      _build();
    });
    await _firstRequest();
    _namedStreamWState.notifyStreamDataForNamed();
  }

  // ignore: unused_element
  void _dispose() {
    _tempCacheProvider.dispose([]);
    _namedStreamWState.dispose();
  }

  void _build() {
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch (dataWNamed.getEnumDataForNamed) {
      case EnumDataForGameMatchVM.isLoading:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "IsLoading");
        break;
      case EnumDataForGameMatchVM.exception:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForGameMatchVM.myFirstUser:
        GameMatchEEMyFirstUserVM(
            dataWNamed.token,
            dataWNamed.userWUsername,
            dataWNamed.gameMatchWUsername.usernameWSecondUser,
            dataWNamed.gameMatchWUsername.gameMatch);
        break;
      case EnumDataForGameMatchVM.mySecondUser:
        GameMatchEEMySecondUserVM(
            dataWNamed.token,
            dataWNamed.userWUsername,
            dataWNamed.gameMatchWUsername.usernameWFirstUser,
            dataWNamed.gameMatchWUsername.gameMatch);
        break;
    }
  }

  Future<void> _firstRequest() async {
    final gameMatchWUsername = _tempCacheProvider.getNamed<GameMatchWUsername>(KeysTempCacheProviderUtility.gameMatchWUsername, GameMatchWUsername(GameMatch("",DateTime.fromMillisecondsSinceEpoch(1736516582),false,"",Balance("",Season("",0,DateTime.fromMillisecondsSinceEpoch(1736516582),DateTime.fromMillisecondsSinceEpoch(1736516582)),0,ListBalanceKiller(List.empty(growable: true))),User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""), ListBannedKiller(List.empty(growable: true)), ListPickedKiller(List.empty(growable: true)), ListRound(List.empty(growable: true)),0,0,0,0),"",""));
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
    _namedStreamWState
        .getDataForNamed
        .gameMatchWUsername = gameMatchWUsername;
  }
}