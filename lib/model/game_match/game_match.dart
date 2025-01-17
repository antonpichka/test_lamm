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

  bool isWhereValidatedThisIsLastPickedKillerParametersListPickedKillerAndBalance() {
    if(listPickedKiller.listModel.isEmpty) {
      return true;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && last.listPickedSurvivorPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk * 2);
  }

  bool isWhereFirstStageOfThePickedKillersIsNotCompletedParametersThree() {
    return listBannedKiller.listModel.length == balance.getNumberOfAllKillersThatNeedToBeBannedInTheFirstStageWhereUsedInterestFormula
        && isWhereValidatedThisIsLastPickedKillerParametersListPickedKillerAndBalance()
        && listPickedKiller.listModel.length < (balance.numberOfRounds - 1);
  }

  bool isWhereSecondStageOfTheBannedKillersIsNotCompletedParametersThree() {
    return isWhereValidatedThisIsLastPickedKillerParametersListPickedKillerAndBalance()
        && listPickedKiller.listModel.length == (balance.numberOfRounds - 1)
        && listBannedKiller.listModel.length < balance.getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds;
  }

  bool isWhereSecondStageOfThePickedKillersIsNotCompletedParametersThree() {
    return listBannedKiller.listModel.length == balance.getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds
        && isWhereValidatedThisIsLastPickedKillerParametersListPickedKillerAndBalance()
        && listPickedKiller.listModel.length < balance.numberOfRounds;
  }

  bool isWhereThisIsLastPickedKillerFirstUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == firstUser.uniqueId
        && last.listBannedMaps.listModel.length < (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listBannedMaps.isWhereNumberOfBannedMapsLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereThisIsLastPickedKillerFirstUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == firstUser.uniqueId
        && last.listBannedMaps.listModel.length < (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listBannedMaps.isWhereNumberOfBannedMapsMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereThisIsLastPickedKillerFirstUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersThree() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == firstUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk()
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk;
  }

  bool isWhereThisIsLastPickedKillerFirstUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == firstUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk()
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) == balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk;
  }

  bool isWhereThisIsLastPickedKillerFirstUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersThree() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == firstUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk()
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk;
  }

  bool isWhereThisIsLastPickedKillerFirstUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == firstUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk()
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) == balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk;
  }

  bool isWhereThisIsLastPickedKillerSecondUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == secondUser.uniqueId
        && last.listBannedMaps.listModel.length < (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listBannedMaps.isWhereNumberOfBannedMapsLessWEqualFromUniqueIdBySecondUserAndUniqueIdByFirstUser(secondUser.uniqueId, firstUser.uniqueId);
  }

  bool isWhereThisIsLastPickedKillerSecondUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == secondUser.uniqueId
        && last.listBannedMaps.listModel.length < (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listBannedMaps.isWhereNumberOfBannedMapsMoreFromUniqueIdBySecondUserAndUniqueIdByFirstUser(secondUser.uniqueId, firstUser.uniqueId);
  }

  bool isWhereThisIsLastPickedKillerSecondUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersThree() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == secondUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk()
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk;
  }

  bool isWhereThisIsLastPickedKillerSecondUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == secondUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk()
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) == balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk;
  }

  bool isWhereThisIsLastPickedKillerSecondUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersThree() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == secondUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk()
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk;
  }

  bool isWhereThisIsLastPickedKillerSecondUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == secondUser.uniqueId
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk()
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) == balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk;
  }

  bool isWhereThisIsLastPickedKillerNobodyUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == ""
        && last.listBannedMaps.listModel.length < (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listBannedMaps.isWhereNumberOfBannedMapsLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereThisIsLastPickedKillerNobodyUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == ""
        && last.listBannedMaps.listModel.length < (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listBannedMaps.isWhereNumberOfBannedMapsMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  bool isWhereThisIsLastPickedKillerNobodyUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersThree() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == ""
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk()
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk;
  }

  bool isWhereThisIsLastPickedKillerNobodyUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == ""
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk()
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) == balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk
        && last.listPickedKillerPerk.getNumberOfPickedKillerPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk;
  }

  bool isWhereThisIsLastPickedKillerNobodyUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersThree() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == ""
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk()
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk;
  }

  bool isWhereThisIsLastPickedKillerNobodyUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersFour() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.user.uniqueId == ""
        && last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthNotEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk()
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(firstUser.uniqueId) == balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk
        && last.listPickedSurvivorPerk.getNumberOfPickedSurvivorPerkFromUniqueIdByUserParameterListModel(secondUser.uniqueId) < balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk;
  }

  bool isWhereThisIsLastPickedKillerAndPickTheKillersMapsWIsTheSystemTurnParametersTwo() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.pickedMaps.uniqueId.isEmpty;
  }

  bool isWhereThisIsLastPickedKillerAndPickTheKillersPerksWIsTheSystemTurnParametersTwo() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthEqualsParametersListKillerPerkAndRequiredNumberOfSelectedKillerPerk()
        && last.listPickedKillerPerk.listModel.length != (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2);
  }

  bool isWhereThisIsLastPickedKillerAndPickTheSurvivorsPerksWIsTheSystemTurnParametersTwo() {
    if(listPickedKiller.listModel.isEmpty) {
      return false;
    }
    final last = listPickedKiller
        .listModel
        .last;
    final balanceKillerFromUniqueIdByKillerParameterListModel = balance
        .listBalanceKiller
        .getBalanceKillerFromUniqueIdByKillerParameterListModel(last.killer.uniqueId);
    return last.pickedMaps.uniqueId.isNotEmpty
        && last.listBannedMaps.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.listMaps.listModel.length - 1)
        && last.listPickedKillerPerk.listModel.length == (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedKillerPerk * 2)
        && balanceKillerFromUniqueIdByKillerParameterListModel.isWhereLengthEqualsParametersListSurvivorPerkAndRequiredNumberOfSelectedSurvivorPerk()
        && last.listPickedSurvivorPerk.listModel.length != (balanceKillerFromUniqueIdByKillerParameterListModel.requiredNumberOfSelectedSurvivorPerk * 2);
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