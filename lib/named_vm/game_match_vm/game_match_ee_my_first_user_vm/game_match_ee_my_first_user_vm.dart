import 'dart:io';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
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
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "IsLoading");
        break;
      case EnumDataForGameMatchEEMyFirstUserVM.exception:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForGameMatchEEMyFirstUserVM.myTurnToBanTheKillerInTheFirstStage:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "MyTurnToBanTheKillerInTheFirstStage(${dataWNamed.getFormattedActionLogParameterGameMatch}\n${dataWNamed.gameMatch.getStringWhereShowBannedKillersAndThoseWhoAreNotBannedYet}\nInput (Index): )");
        final input = stdin.readLineSync();
        final numberWhereStrConvertedWZeroFromInput = AlgorithmsUtility.getNumberWhereStrConvertedWZeroFromInput(input);
        _myTurnToBanTheKillerInTheFirstStage(numberWhereStrConvertedWZeroFromInput);
        break;
      case EnumDataForGameMatchEEMyFirstUserVM.enemyTurnToBanTheKillerInTheFirstStage:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "EnemyTurnToBanTheKillerInTheFirstStage(${dataWNamed.getFormattedActionLogParameterGameMatch}\n${dataWNamed.gameMatch.getStringWhereShowBannedKillersAndThoseWhoAreNotBannedYet}\nIndex: 0)");
        _enemyTurnToBanTheKillerInTheFirstStage(0);
        break;
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
      case EnumDataForGameMatchEEMyFirstUserVM.completed:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Completed(${dataWNamed.gameMatch})");
        break;
    }
  }

  Future<void> _firstRequest() async {
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
  }

  void _myTurnToBanTheKillerInTheFirstStage(int index) {
    final username = _namedStreamWState
        .getDataForNamed
        .userWUsername
        .username;
    final gameMatch = _namedStreamWState
        .getDataForNamed
        .gameMatch;
    gameMatch.insertBannedKillerFromIndexParametersListBannedKillerAndFirstUser(index);
    final gameMatchFirst = GameMatch(
        gameMatch.uniqueId,
        gameMatch.creationAt,
        gameMatch.isCompleted,
        "${gameMatch.actionLog}\n'${gameMatch.firstUser}($username)': banned killer '${gameMatch.listBannedKiller.listModel.last}'",
        gameMatch.balance.clone(),
        gameMatch.firstUser.clone(),
        gameMatch.secondUser.clone(),
        gameMatch.listBannedKiller.clone(),
        gameMatch.listPickedKiller.clone(),
        gameMatch.listRound.clone(),
        gameMatch.pointsByStatsWFirstUser,
        gameMatch.pointsByStatsWSecondUser,
        gameMatch.pointsPerGameMatchWFirstUser,
        gameMatch.pointsPerGameMatchWSecondUser);
    _namedStreamWState
        .getDataForNamed
        .gameMatch = gameMatchFirst;
    _namedStreamWState.notifyStreamDataForNamed();
  }

  Future<void> _enemyTurnToBanTheKillerInTheFirstStage(int index) async {
    await Future.delayed(Duration(seconds: 1));
    final usernameWSecondUser = _namedStreamWState
        .getDataForNamed
        .usernameWSecondUser;
    final gameMatch = _namedStreamWState
        .getDataForNamed
        .gameMatch;
    gameMatch.insertBannedKillerFromIndexParametersListBannedKillerAndSecondUser(index);
    final gameMatchFirst = GameMatch(
        gameMatch.uniqueId,
        gameMatch.creationAt,
        gameMatch.isCompleted,
        "${gameMatch.actionLog}\n'${gameMatch.secondUser}($usernameWSecondUser)': banned killer '${gameMatch.listBannedKiller.listModel.last}'",
        gameMatch.balance.clone(),
        gameMatch.firstUser.clone(),
        gameMatch.secondUser.clone(),
        gameMatch.listBannedKiller.clone(),
        gameMatch.listPickedKiller.clone(),
        gameMatch.listRound.clone(),
        gameMatch.pointsByStatsWFirstUser,
        gameMatch.pointsByStatsWSecondUser,
        gameMatch.pointsPerGameMatchWFirstUser,
        gameMatch.pointsPerGameMatchWSecondUser);
    _namedStreamWState
        .getDataForNamed
        .gameMatch = gameMatchFirst;
    _namedStreamWState.notifyStreamDataForNamed();
  }
}