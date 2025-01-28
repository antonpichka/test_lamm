import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_second_user_vm/data_for_game_match_ee_my_second_user_vm.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_second_user_vm/enum_data_for_game_match_ee_my_second_user_vm.dart';

final class GameMatchEEMySecondUserVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForGameMatchEEMySecondUserVM> _namedStreamWState;

  GameMatchEEMySecondUserVM(Token token, UserWUsername userWUsername, String usernameWFirstUser, GameMatch gameMatch) {
    _namedStreamWState = lamm.DefaultStreamWState(DataForGameMatchEEMySecondUserVM(true, token, userWUsername, usernameWFirstUser, gameMatch));
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
      case EnumDataForGameMatchEEMySecondUserVM.isLoading:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.exception:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWEnemyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWMyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWMyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWEnemyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWMyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWMyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWEnemyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWMyTurnToBanTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersMaps:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsPickedKillerWSystemTurnToPickTheSurvivorsPerks:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.enemyTurnToBanTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.myTurnToBanTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.enemyTurnToPickTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.myTurnToPickTheKillerInTheFirstStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.enemyTurnToBanTheKillerInTheSecondStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.myTurnToBanTheKillerInTheSecondStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.systemTurnToPickTheKillerInTheSecondStage:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWMyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWMyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWEnemyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWMyKillerNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForGameMatchEEMySecondUserVM.completed:
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