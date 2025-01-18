import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_first_user_vm/enum_data_for_game_match_ee_my_first_user_vm.dart';

final class DataForGameMatchEEMyFirstUserVM extends BaseDataForNamed<EnumDataForGameMatchEEMyFirstUserVM> {
  final Token token;
  final UserWUsername userWUsername;
  final String usernameWSecondUser;
  GameMatch gameMatch;

  DataForGameMatchEEMyFirstUserVM(super.isLoading, this.token, this.userWUsername, this.usernameWSecondUser, this.gameMatch);

  @override
  EnumDataForGameMatchEEMyFirstUserVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForGameMatchEEMyFirstUserVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForGameMatchEEMyFirstUserVM.exception;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWMyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWEnemyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWMyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWMyTurnToPickTheSurvivorsPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWEnemyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWMyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWMyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWEnemyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheSurvivorsPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerAndPickTheKillersMapsWIsTheSystemTurnParametersTwo()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerAndPickTheKillersPerksWIsTheSystemTurnParametersTwo()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerAndPickTheSurvivorsPerksWIsTheSystemTurnParametersTwo()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsPickedKillerWSystemTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereFirstStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.myTurnToBanTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereFirstStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.enemyTurnToBanTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereFirstStageOfThePickOnKillersItsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.myTurnToPickTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereFirstStageOfThePickOnKillersItsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.enemyTurnToPickTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereSecondStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.myTurnToBanTheKillerInTheSecondStage;
    }
    if(gameMatch.isWhereSecondStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.enemyTurnToBanTheKillerInTheSecondStage;
    }
    if(gameMatch.isWhereSecondStageOfThePickedKillersIsNotCompletedParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.systemTurnToPickTheKillerInTheSecondStage;
    }

    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalanceAndFirstUser()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWMyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersListRoundAndBalanceAndFirstUser()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWEnemyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady;
    }

    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersListRoundAndBalanceAndSecondUser()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersThreeFirst()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersThreeFirst()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalanceAndSecondUser()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWMyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersThreeFirst()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersThreeFirst()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady;
    }

    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWMyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersThreeSecond()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersThreeSecond()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersThree()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersThreeSecond()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady;
    }
    /// Calculate ELO and thus determine the winner
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersThreeSecond()) {
      return EnumDataForGameMatchEEMyFirstUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady;
    }
    return EnumDataForGameMatchEEMyFirstUserVM.completed;
  }

  String get getFormattedActionLogParameterGameMatch {
    return "\n<-------ACTION LOG------->${gameMatch.actionLog}\n<-------ACTION LOG------->";
  }

  @override
  String toString() {
    return "DataForGameMatchEEMyFirstUserVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "userWUsername: $userWUsername, "
        "usernameWSecondUser: $usernameWSecondUser, "
        "gameMatch: $gameMatch)";
  }
}