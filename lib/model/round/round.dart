import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:meta/meta.dart';
import 'package:test_lamm/model/picked_killer/picked_killer.dart';

@immutable
base class Round extends BaseModel {
  final int number;
  final PickedKiller pickedKiller;
  final bool isTheKillerReadyWFirstUser;
  final bool isTheSurvivorReadyWSecondUser;
  final bool isTheKillerReadyWSecondUser;
  final bool isTheSurvivorReadyWFirstUser;
  final int chaseTimeInMillisecondsWFirstUser;
  final int chaseTimeInMillisecondsWSecondUser;

  const Round(super.uniqueId, this.number, this.pickedKiller, this.isTheKillerReadyWFirstUser, this.isTheSurvivorReadyWSecondUser, this.isTheKillerReadyWSecondUser, this.isTheSurvivorReadyWFirstUser, this.chaseTimeInMillisecondsWFirstUser, this.chaseTimeInMillisecondsWSecondUser);

  @override
  Round clone() => Round(uniqueId, number, pickedKiller.clone(), isTheKillerReadyWFirstUser, isTheSurvivorReadyWSecondUser, isTheKillerReadyWSecondUser, isTheSurvivorReadyWFirstUser, chaseTimeInMillisecondsWFirstUser, chaseTimeInMillisecondsWSecondUser);

  @override
  String toString() {
    return "Round(uniqueId: $uniqueId, number: $number, pickedKiller: $pickedKiller, isTheKillerReadyWFirstUser: $isTheKillerReadyWFirstUser, isTheSurvivorReadyWSecondUser: $isTheSurvivorReadyWSecondUser, isTheKillerReadyWSecondUser: $isTheKillerReadyWSecondUser, isTheSurvivorReadyWFirstUser: $isTheSurvivorReadyWFirstUser, chaseTimeInMillisecondsWFirstUser: $chaseTimeInMillisecondsWFirstUser, chaseTimeInMillisecondsWSecondUser: $chaseTimeInMillisecondsWSecondUser)";
  }

  @nonVirtual
  bool isWhereFinishedRoundParametersSix() {
    return isTheKillerReadyWFirstUser
        && isTheSurvivorReadyWSecondUser
        && isTheKillerReadyWSecondUser
        && isTheSurvivorReadyWFirstUser
        && chaseTimeInMillisecondsWFirstUser > 0
        && chaseTimeInMillisecondsWSecondUser > 0;
  }

  @nonVirtual
  bool isWhereUnfinishedRoundParametersSix() {
    return !isTheKillerReadyWFirstUser
        || !isTheSurvivorReadyWSecondUser
        || !isTheKillerReadyWSecondUser
        || !isTheSurvivorReadyWFirstUser
        || chaseTimeInMillisecondsWFirstUser <= 0
        || chaseTimeInMillisecondsWSecondUser <= 0;
  }

  @nonVirtual
  bool isWhereEqualsAndFalseFromUniqueIdByUserParametersPickedKillerAndIsTheKillerReadyWFirstUser(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && !isTheKillerReadyWFirstUser;
  }

  @nonVirtual
  bool isWhereEqualsAndTrueAndFalseFromUniqueIdByUserParametersThree(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && isTheKillerReadyWFirstUser
        && !isTheSurvivorReadyWSecondUser;
  }

  @nonVirtual
  bool isWhereEqualsAndLessWEqualsZeroAndTrueAndTrueFromUniqueIdByUserParametersFour(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWSecondUser <= 0
        && isTheKillerReadyWFirstUser
        && isTheSurvivorReadyWSecondUser;
  }

  @nonVirtual
  bool isWhereEqualsAndMoreZeroAndFalseFromUniqueIdByUserParametersThree(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWSecondUser > 0
        && !isTheKillerReadyWSecondUser;
  }

  @nonVirtual
  bool isWhereEqualsAndMoreZeroAndTrueAndFalseFromUniqueIdByUserParametersFour(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWSecondUser > 0
        && isTheKillerReadyWSecondUser
        && !isTheSurvivorReadyWFirstUser;
  }

  @nonVirtual
  bool isWhereEqualsAndMoreZeroAndTrueAndTrueFromUniqueIdByUserParametersFour(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWSecondUser > 0
        && isTheKillerReadyWSecondUser
        && isTheSurvivorReadyWFirstUser;
  }

  @nonVirtual
  bool isWhereEqualsAndFalseFromUniqueIdByUserParametersPickedKillerAndIsTheKillerReadyWSecondUser(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && !isTheKillerReadyWSecondUser;
  }

  @nonVirtual
  bool isWhereEqualsAndTrueAndFalseFromUniqueIdByUserParametersThreeFirst(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && isTheKillerReadyWSecondUser
        && !isTheSurvivorReadyWFirstUser;
  }

  @nonVirtual
  bool isWhereEqualsAndLessWEqualsZeroAndTrueAndTrueFromUniqueIdByUserParametersFourFirst(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWFirstUser <= 0
        && isTheKillerReadyWSecondUser
        && isTheSurvivorReadyWFirstUser;
  }

  @nonVirtual
  bool isWhereEqualsAndMoreZeroAndFalseFromUniqueIdByUserParametersThreeFirst(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWSecondUser > 0
        && !isTheKillerReadyWFirstUser;
  }

  @nonVirtual
  bool isWhereEqualsAndMoreZeroAndTrueAndFalseFromUniqueIdByUserParametersFourFirst(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWSecondUser > 0
        && isTheKillerReadyWFirstUser
        && !isTheSurvivorReadyWSecondUser;
  }

  @nonVirtual
  bool isWhereEqualsAndMoreZeroAndTrueAndTrueFromUniqueIdByUserParametersFourFirst(String uniqueIdByUser) {
    return pickedKiller.user.uniqueId == uniqueIdByUser
        && chaseTimeInMillisecondsWSecondUser > 0
        && isTheKillerReadyWFirstUser
        && isTheSurvivorReadyWSecondUser;
  }
}