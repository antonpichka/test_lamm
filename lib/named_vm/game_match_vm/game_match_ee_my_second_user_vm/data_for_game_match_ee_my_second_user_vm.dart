import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_vm/game_match_vm/game_match_ee_my_second_user_vm/enum_data_for_game_match_ee_my_second_user_vm.dart';

final class DataForGameMatchEEMySecondUserVM extends BaseDataForNamed<EnumDataForGameMatchEEMySecondUserVM> {
  final Token token;
  final UserWUsername userWUsername;
  final String usernameWFirstUser;
  GameMatch gameMatch;

  DataForGameMatchEEMySecondUserVM(super.isLoading, this.token, this.userWUsername, this.usernameWFirstUser, this.gameMatch);

  @override
  EnumDataForGameMatchEEMySecondUserVM get getEnumDataForNamed {
    if(isLoading) {
      return EnumDataForGameMatchEEMySecondUserVM.isLoading;
    }
    if(exceptionController.isWhereNotEqualsNullParameterException()) {
      return EnumDataForGameMatchEEMySecondUserVM.exception;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWEnemyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWMyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerFirstUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerWMyTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWMyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWEnemyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWMyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWMyTurnToPickTheSurvivorsPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerSecondUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerWEnemyTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndBanTheKillersMapsWIsTheFirstUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWEnemyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndBanTheKillersMapsWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWMyTurnToBanTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheKillersPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheKillersPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheKillersPerks;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheSurvivorsPerksWIsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWEnemyTurnToPickTheSurvivorsPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerNobodyUserAndPickTheSurvivorsPerksWIsTheSecondUserTurnParametersFour()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerWMyTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereThisIsLastPickedKillerAndPickTheKillersMapsWIsTheSystemTurnParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersMaps;
    }
    if(gameMatch.isWhereThisIsLastPickedKillerAndPickTheKillersPerksWIsTheSystemTurnParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsPickedKillerWSystemTurnToPickTheKillersPerks;
    }
    /// This is a script to add 'Round'
    if(gameMatch.isWhereThisIsLastPickedKillerAndPickTheSurvivorsPerksWIsTheSystemTurnParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsPickedKillerWSystemTurnToPickTheSurvivorsPerks;
    }

    if(gameMatch.isWhereFirstStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.enemyTurnToBanTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereFirstStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.myTurnToBanTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereFirstStageOfThePickOnKillersItsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.enemyTurnToPickTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereFirstStageOfThePickOnKillersItsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.myTurnToPickTheKillerInTheFirstStage;
    }
    if(gameMatch.isWhereSecondStageOfTheBanOnKillersItsTheFirstUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.enemyTurnToBanTheKillerInTheSecondStage;
    }
    if(gameMatch.isWhereSecondStageOfTheBanOnKillersItsTheSecondUserTurnParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.myTurnToBanTheKillerInTheSecondStage;
    }
    if(gameMatch.isWhereSecondStageOfThePickedKillersIsNotCompletedParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.systemTurnToPickTheKillerInTheSecondStage;
    }

    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalanceAndFirstUser()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersListRoundAndBalanceAndFirstUser()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWMyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersThree()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNotMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady;
    }

    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersListRoundAndBalanceAndSecondUser()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWMyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersThreeFirst()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersThreeFirst()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalanceAndSecondUser()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWEnemyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersThreeFirst()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersThreeFirst()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsMyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady;
    }

    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWFirstParametersListRoundAndBalance()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorNotReadyWSecondParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWFirstAndSurvivorReadyWSecondParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWEnemyKillerReadyAndMySurvivorReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerNotReadyWSecondParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWMyKillerNotReady;
    }
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorNotReadyWFirstParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorNotReady;
    }
    /// Calculate ELO and thus determine the winner
    if(gameMatch.isWhereThisIsFirstUnfinishedRoundWKillerReadyWSecondAndSurvivorReadyWFirstParametersTwo()) {
      return EnumDataForGameMatchEEMySecondUserVM.thisIsNobodyPickedKillerInRoundWMyKillerReadyAndEnemySurvivorReady;
    }
    return EnumDataForGameMatchEEMySecondUserVM.completed;
  }

  String get getFormattedActionLogParameterGameMatch {
    return "\n<-------ACTION LOG------->${gameMatch.actionLog}\n<-------ACTION LOG------->";
  }

  @override
  String toString() {
    return "DataForGameMatchEEMySecondUserVM(isLoading: $isLoading, "
        "exceptionController: $exceptionController, "
        "token: $token, "
        "userWUsername: $userWUsername, "
        "usernameWFirstUser: $usernameWFirstUser, "
        "gameMatch: $gameMatch)";
  }
}