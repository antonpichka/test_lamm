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
}