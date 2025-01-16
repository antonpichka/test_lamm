import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/balance_killer/balance_killer.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';
import 'package:test_lamm/model/banned_killer/banned_killer.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';
import 'package:test_lamm/model/picked_killer/list_picked_killer.dart';
import 'package:test_lamm/model/round/list_round.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:uuid/uuid.dart';

@immutable
base class GameMatch extends BaseModel {
  final DateTime creationAt;
  final bool isCompleted;
  final String actionLog;
  final Balance balance;
  final User firstUser;
  final User secondUser;
  final ListBannedKiller listBannedKiller;
  final ListPickedKiller listPickedKiller;
  final ListRound listRound;
  final int pointsByStatsWFirstUser;
  final int pointsByStatsWSecondUser;
  final int pointsPerGameMatchWFirstUser;
  final int pointsPerGameMatchWSecondUser;

  const GameMatch(super.uniqueId, this.creationAt, this.isCompleted, this.actionLog, this.balance, this.firstUser, this.secondUser, this.listBannedKiller, this.listPickedKiller, this.listRound, this.pointsByStatsWFirstUser, this.pointsByStatsWSecondUser, this.pointsPerGameMatchWFirstUser, this.pointsPerGameMatchWSecondUser);

  @override
  GameMatch clone() => GameMatch(uniqueId, creationAt, isCompleted, actionLog, balance.clone(), firstUser.clone(), secondUser.clone(), listBannedKiller.clone(), listPickedKiller.clone(), listRound.clone(), pointsByStatsWFirstUser, pointsByStatsWSecondUser, pointsPerGameMatchWFirstUser, pointsPerGameMatchWSecondUser);

  @override
  String toString() {
    return "GameMatch(uniqueId: $uniqueId, creationAt: $creationAt, isCompleted: $isCompleted, actionLog: $actionLog, balance: $balance, firstUser: $firstUser, secondUser: $secondUser, listBannedKiller: $listBannedKiller, listPickedKiller: $listPickedKiller, listRound: $listRound, pointsByStatsWFirstUser: $pointsByStatsWFirstUser, pointsByStatsWSecondUser: $pointsByStatsWSecondUser, pointsPerGameMatchWFirstUser: $pointsPerGameMatchWFirstUser, pointsPerGameMatchWSecondUser: $pointsPerGameMatchWSecondUser)";
  }

  ListBalanceKiller get getListBalanceKillerWhereNotBannedParametersBalanceAndListBannedKiller {
    final ListBalanceKiller clone = balance.listBalanceKiller.clone();
    for(final BalanceKiller itemModel in balance.listBalanceKiller.listModel) {
      for(final BannedKiller itemModelFirst in listBannedKiller.listModel) {
        if(itemModelFirst.killer.uniqueId == itemModel.killer.uniqueId) {
          clone.deleteFromUniqueIdByModelParameterListModel(itemModel.uniqueId);
          break;
        }
      }
    }
    return clone;
  }

  ListBannedKiller get getListBannedKillerParametersListBannedKillerAndFirstUser {
    return listBannedKiller.getListBannedKillerFromUniqueIdByUserParameterListModel(firstUser.uniqueId);
  }

  ListBannedKiller get getListBannedKillerParametersListBannedKillerAndSecondUser {
    return listBannedKiller.getListBannedKillerFromUniqueIdByUserParameterListModel(secondUser.uniqueId);
  }

  String get getStringWhereShowBannedKillersAndThoseWhoAreNotBannedYet {
    return "$getListBannedKillerParametersListBannedKillerAndFirstUser\n$getListBannedKillerParametersListBannedKillerAndSecondUser\n$getListBalanceKillerWhereNotBannedParametersBalanceAndListBannedKiller";
  }

  void insertBannedKillerFromIndexParametersListBannedKillerAndFirstUser(int index) {
    final itemModel = getListBalanceKillerWhereNotBannedParametersBalanceAndListBannedKiller.listModel[index];
    listBannedKiller.insertFromNewModelParameterListModel(BannedKiller(Uuid().v1(), itemModel.killer.clone(), DateTime.now(), firstUser.clone()));
  }

  void insertBannedKillerFromIndexParametersListBannedKillerAndSecondUser(int index) {
    final itemModel = getListBalanceKillerWhereNotBannedParametersBalanceAndListBannedKiller.listModel[index];
    listBannedKiller.insertFromNewModelParameterListModel(BannedKiller(Uuid().v1(), itemModel.killer.clone(), DateTime.now(), secondUser.clone()));
  }

  bool isWhereFirstStageOfTheBannedKillersIsNotCompletedParametersListBannedKillerAndBalance() {
    return listBannedKiller.listModel.length < balance.getNumberOfAllKillersThatNeedToBeBannedInTheFirstStageWhereUsedInterestFormula;
  }

  bool isWhereFirstStageOfThePickedKillersIsNotCompletedParametersThree() {
    return listBannedKiller.listModel.length == balance.getNumberOfAllKillersThatNeedToBeBannedInTheFirstStageWhereUsedInterestFormula
        && listPickedKiller.listModel.length < (balance.numberOfRounds - 1);
  }

  bool isWhereSecondStageOfTheBannedKillersIsNotCompletedParametersThree() {
    return listPickedKiller.listModel.length == (balance.numberOfRounds - 1)
        && listBannedKiller.listModel.length < balance.getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds;
  }

  bool isWhereSecondStageOfThePickedKillersIsNotCompletedParametersThree() {
    return listBannedKiller.listModel.length == balance.getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds
        && listPickedKiller.listModel.length < balance.numberOfRounds;
  }

  bool isWhereFirstStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree() {
    return isWhereFirstStageOfTheBannedKillersIsNotCompletedParametersListBannedKillerAndBalance()
        && listBannedKiller.isWhereNumberOfBannedKillersLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereFirstStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree() {
    return isWhereFirstStageOfTheBannedKillersIsNotCompletedParametersListBannedKillerAndBalance()
        && listBannedKiller.isWhereNumberOfBannedKillersMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereFirstStageOfThePickOnKillersItsTheFirstUserTurnParametersThree() {
    return isWhereFirstStageOfThePickedKillersIsNotCompletedParametersThree()
        && listPickedKiller.isWhereNumberOfPickedKillersLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereFirstStageOfThePickOnKillersItsTheSecondUserTurnParametersThree() {
    return isWhereFirstStageOfThePickedKillersIsNotCompletedParametersThree()
        && listPickedKiller.isWhereNumberOfPickedKillersMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereSecondStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree() {
    return isWhereSecondStageOfTheBannedKillersIsNotCompletedParametersThree()
        && listBannedKiller.isWhereNumberOfBannedKillersLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereSecondStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree() {
    return isWhereSecondStageOfTheBannedKillersIsNotCompletedParametersThree()
        && listBannedKiller.isWhereNumberOfBannedKillersMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }
}