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

  @nonVirtual
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

  @nonVirtual
  ListBannedKiller get getListBannedKillerParametersListBannedKillerAndFirstUser {
    return listBannedKiller.getListBannedKillerFromUniqueIdByUserParameterListModel(firstUser.uniqueId);
  }

  @nonVirtual
  ListBannedKiller get getListBannedKillerParametersListBannedKillerAndSecondUser {
    return listBannedKiller.getListBannedKillerFromUniqueIdByUserParameterListModel(secondUser.uniqueId);
  }

  @nonVirtual
  String get getStringWhereShowBannedKillersAndThoseWhoAreNotBannedYet {
    return "$getListBannedKillerParametersListBannedKillerAndFirstUser\n$getListBannedKillerParametersListBannedKillerAndSecondUser\n$getListBalanceKillerWhereNotBannedParametersBalanceAndListBannedKiller";
  }

  @nonVirtual
  void insertBannedKillerFromIndexParametersListBannedKillerAndFirstUser(int index) {
    final itemModel = getListBalanceKillerWhereNotBannedParametersBalanceAndListBannedKiller.listModel[index];
    listBannedKiller.insertFromNewModelParameterListModel(BannedKiller(Uuid().v1(), itemModel.killer.clone(), DateTime.now(), firstUser.clone()));
  }

  @nonVirtual
  void insertBannedKillerFromIndexParametersListBannedKillerAndSecondUser(int index) {
    final itemModel = getListBalanceKillerWhereNotBannedParametersBalanceAndListBannedKiller.listModel[index];
    listBannedKiller.insertFromNewModelParameterListModel(BannedKiller(Uuid().v1(), itemModel.killer.clone(), DateTime.now(), secondUser.clone()));
  }

  @nonVirtual
  bool isWhereFirstStageOfTheBannedKillersIsNotCompletedParametersListBannedKillerAndBalance() {
    return listBannedKiller.listModel.length < balance.getNumberOfAllKillersThatNeedToBeBannedInTheFirstStageWhereUsedInterestFormula;
  }

  @nonVirtual
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

  @nonVirtual
  bool isWhereFirstStageOfThePickedKillersIsNotCompletedParametersThree() {
    return listBannedKiller.listModel.length == balance.getNumberOfAllKillersThatNeedToBeBannedInTheFirstStageWhereUsedInterestFormula
        && isWhereValidatedThisIsLastPickedKillerParametersListPickedKillerAndBalance()
        && listPickedKiller.listModel.length < (balance.numberOfRounds - 1);
  }

  @nonVirtual
  bool isWhereSecondStageOfTheBannedKillersIsNotCompletedParametersThree() {
    return isWhereValidatedThisIsLastPickedKillerParametersListPickedKillerAndBalance()
        && listPickedKiller.listModel.length == (balance.numberOfRounds - 1)
        && listBannedKiller.listModel.length < balance.getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds;
  }

  @nonVirtual
  bool isWhereSecondStageOfThePickedKillersIsNotCompletedParametersThree() {
    return listBannedKiller.listModel.length == balance.getNumberOfAllKillersThatNeedToBeBannedParametersListBalanceKillerAndNumberOfRounds
        && isWhereValidatedThisIsLastPickedKillerParametersListPickedKillerAndBalance()
        && listPickedKiller.listModel.length < balance.numberOfRounds;
  }

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
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

  @nonVirtual
  bool isWhereFirstStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree() {
    return isWhereFirstStageOfTheBannedKillersIsNotCompletedParametersListBannedKillerAndBalance()
        && listBannedKiller.isWhereNumberOfBannedKillersLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereFirstStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree() {
    return isWhereFirstStageOfTheBannedKillersIsNotCompletedParametersListBannedKillerAndBalance()
        && listBannedKiller.isWhereNumberOfBannedKillersMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereFirstStageOfThePickOnKillersItsTheFirstUserTurnParametersThree() {
    return isWhereFirstStageOfThePickedKillersIsNotCompletedParametersThree()
        && listPickedKiller.isWhereNumberOfPickedKillersLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereFirstStageOfThePickOnKillersItsTheSecondUserTurnParametersThree() {
    return isWhereFirstStageOfThePickedKillersIsNotCompletedParametersThree()
        && listPickedKiller.isWhereNumberOfPickedKillersMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereSecondStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree() {
    return isWhereSecondStageOfTheBannedKillersIsNotCompletedParametersThree()
        && listBannedKiller.isWhereNumberOfBannedKillersLessWEqualFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereSecondStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree() {
    return isWhereSecondStageOfTheBannedKillersIsNotCompletedParametersThree()
        && listBannedKiller.isWhereNumberOfBannedKillersMoreFromUniqueIdByFirstUserAndUniqueIdBySecondUser(firstUser.uniqueId, secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalanceAndFirstUser() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstFromUniqueIdByUser(firstUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersThree() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondFromOne(firstUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersThree() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondFromOne(firstUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersListRoundAndBalanceAndFirstUser() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondFromOne(firstUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersThree() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstFromOne(firstUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersThree() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstFromOne(firstUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersListRoundAndBalanceAndSecondUser() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondFromUniqueIdByUser(secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersThreeFirst() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstFromUniqueIdByUser(secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersThreeFirst() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstFromUniqueIdByUser(secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalanceAndSecondUser() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstFromUniqueIdByUserFirst(secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersThreeFirst() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondFromUniqueIdByUser(secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersThreeFirst() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondFromUniqueIdByUser(secondUser.uniqueId);
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalance() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstFromUniqueIdByUser("");
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersTwo() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondFromOne("");
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersTwo() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondFromOne("");
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersTwo() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondFromOne("");
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersTwo() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstFromOne("");
  }

  @nonVirtual
  bool isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersTwo() {
    return listRound.listModel.length == balance.numberOfRounds
        && listRound.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstFromOne("");
  }
}