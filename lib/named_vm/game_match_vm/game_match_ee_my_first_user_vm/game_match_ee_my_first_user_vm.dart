import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_first_user_vm/data_for_game_match_ee_my_first_user_vm.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_first_user_vm/enum_data_for_game_match_ee_my_first_user_vm.dart';

final class GameMatchEEMyFirstUserVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForGameMatchEEMyFirstUserVM> _namedStreamWState;

  GameMatchEEMyFirstUserVM(Token token, UserWUsername userWUsername, String usernameWSecondUser, GameMatch gameMatch) {
    _namedStreamWState = lamm.DefaultStreamWState(DataForGameMatchEEMyFirstUserVM(true, token, userWUsername, usernameWSecondUser, gameMatch));
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
      case EnumDataForGameMatchEEMyFirstUserVM.isLoading:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.exception:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWMyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWEnemyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWMyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWMyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWEnemyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWMyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWMyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWEnemyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsPickedKillerWSystemTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.myTurnToBanTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.enemyTurnToBanTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.myTurnToPickTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.enemyTurnToPickTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.myTurnToBanTheKillerInTheSecondStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.enemyTurnToBanTheKillerInTheSecondStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.systemTurnToPickTheKillerInTheSecondStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWMyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWEnemyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWMyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWMyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMyFirstUserVM.completed:
        // TODO: Handle this case.
        throw UnimplementedError();
    }
  }

  Future<void> _firstRequest() async {
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
  }
}