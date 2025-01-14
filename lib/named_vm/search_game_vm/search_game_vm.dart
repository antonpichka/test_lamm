import 'dart:io';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/search_game/search_game.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/search_game_w_username_w_stats_w_enemy.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/stats/stats.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
import 'package:test_lamm/named_utility/keys_temp_cache_provider_utility.dart';
import 'package:test_lamm/named_vm/search_game_vm/data_for_search_game_vm.dart';
import 'package:test_lamm/named_vm/search_game_vm/enum_data_for_search_game_vm.dart';

final class SearchGameVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForSearchGameVM> _namedStreamWState;

  SearchGameVM(Token token, UserWUsername userWUsername) {
    _namedStreamWState = lamm.DefaultStreamWState(DataForSearchGameVM(true, token, userWUsername, Stats("",User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),Season("",0,DateTime.fromMillisecondsSinceEpoch(1736516582),DateTime.fromMillisecondsSinceEpoch(1736516582)),0,0,0), SearchGame("",DateTime.fromMillisecondsSinceEpoch(1736516582),User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),false,false,false), UserWUsername("",User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),""), Stats("",User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),Season("",0,DateTime.fromMillisecondsSinceEpoch(1736516582),DateTime.fromMillisecondsSinceEpoch(1736516582)),0,0,0)));
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
      case EnumDataForSearchGameVM.isLoading:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "IsLoading");
        break;
      case EnumDataForSearchGameVM.exception:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForSearchGameVM.searchMode:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "SearchMode(Looking for an opponent...)");
        _waitingInSearchMode();
        break;
      case EnumDataForSearchGameVM.acceptanceMode:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "AcceptanceMode(${dataWNamed.getStringWhereStrMyUserParametersUserWUsernameWEnemyAndStatsWEnemy}\nExit: 0\nAccept: 1\nCancel: 2\nInput: )");
        final input = stdin.readLineSync();
        final numberWhereStrConvertedWZeroFromInput = AlgorithmsUtility.getNumberWhereStrConvertedWZeroFromInput(input);
        _choiceInAcceptanceMode(numberWhereStrConvertedWZeroFromInput);
        break;
      case EnumDataForSearchGameVM.navigation:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Navigation(${dataWNamed.getStringParametersUserWUsernameAndStats}\nExit: 0\nSearchMode: 1\nInput: )");
        final input = stdin.readLineSync();
        final numberWhereStrConvertedWZeroFromInput = AlgorithmsUtility.getNumberWhereStrConvertedWZeroFromInput(input);
        _choiceInNavigation(numberWhereStrConvertedWZeroFromInput);
        break;
    }
  }

  Future<void> _firstRequest() async {
    final user = _namedStreamWState
        .getDataForNamed
        .userWUsername
        .user;
    final stats = _tempCacheProvider.getNamed<Stats>(KeysTempCacheProviderUtility.stats, Stats("",User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),Season("",0,DateTime.fromMillisecondsSinceEpoch(1736516582),DateTime.fromMillisecondsSinceEpoch(1736516582)),0,0,0));
    final isWhereIsEmptyByUniqueIdFromStats = _namedStreamWState
        .getDataForNamed
        .isWhereIsEmptyByUniqueIdFromStats(stats);
    if(isWhereIsEmptyByUniqueIdFromStats) {
      _firstQQFirstRequestQQIsWhereIsEmptyByUniqueIdFromStats(user);
      return;
    }
    final searchGame = SearchGame("7db4dab6-d287-11ef-9cd2-0242ac120002", DateTime.fromMillisecondsSinceEpoch(1736516582), user.clone(), User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""), false, false, false);
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
    _namedStreamWState
        .getDataForNamed
        .stats = stats;
    _namedStreamWState
        .getDataForNamed
        .searchGame = searchGame;
  }

  void _choiceInNavigation(int number) {
    if(number == 0) {
      return;
    }
    final isWhereEqualsOneFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsOneFromNumber(number);
    if(isWhereEqualsOneFromNumber) {
      _firstQQChoiceInNavigationQQIsWhereEqualsOneFromNumber();
      return;
    }
  }

  void _choiceInAcceptanceMode(int number) {
    if(number == 0) {
      return;
    }
    final isWhereEqualsOneFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsOneFromNumber(number);
    if(isWhereEqualsOneFromNumber) {
      _firstQQChoiceInAcceptanceModeQQIsWhereEqualsOneFromNumber();
      return;
    }
    final isWhereEqualsTwoFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsTwoFromNumber(number);
    if(isWhereEqualsTwoFromNumber) {
      _firstQQChoiceInAcceptanceModeQQIsWhereEqualsTwoFromNumber();
      return;
    }
  }

  void _firstQQFirstRequestQQIsWhereIsEmptyByUniqueIdFromStats(User user) {
    final stats = Stats("9e73b7d2-d286-11ef-9cd2-0242ac120002", user.clone(), Season("1356b4d2-d287-11ef-9cd2-0242ac120002", 1, DateTime.fromMillisecondsSinceEpoch(1736516582), DateTime.fromMillisecondsSinceEpoch(1736516582)), 0, 0, 500);
    final searchGame = SearchGame("7db4dab6-d287-11ef-9cd2-0242ac120002", DateTime.fromMillisecondsSinceEpoch(1736516582), user.clone(), User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""), false, false, false);
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
    _namedStreamWState
        .getDataForNamed
        .stats = stats;
    _namedStreamWState
        .getDataForNamed
        .searchGame = searchGame;
    _tempCacheProvider.update(KeysTempCacheProviderUtility.stats, stats);
  }

  void _firstQQChoiceInNavigationQQIsWhereEqualsOneFromNumber() {
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    final searchGameFirst = SearchGame(searchGame.uniqueId, searchGame.updatedAt, searchGame.user.clone(), User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""), true, false, false);
    _namedStreamWState.getDataForNamed.searchGame = searchGameFirst;
    _namedStreamWState.notifyStreamDataForNamed();
  }

  Future<void> _waitingInSearchMode() async {
    await Future.delayed(Duration(seconds: 5));
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    final userWhereGenerated = AlgorithmsUtility.getUserWhereGenerated();
    final searchGameWUsernameWStatsWEnemy = SearchGameWUsernameWStatsWEnemy(
        SearchGame(
            searchGame.uniqueId,
            searchGame.updatedAt,
            searchGame.user.clone(),
            userWhereGenerated,
            searchGame.isSearching,
            searchGame.isAccepted,
            searchGame.isAcceptedWEnemy),
        AlgorithmsUtility.getStringWhereGeneratedFromStrTemplate("Enemy"),
        AlgorithmsUtility.getStatsFromUser(userWhereGenerated));
    _namedStreamWState
        .getDataForNamed
        .searchGame = searchGameWUsernameWStatsWEnemy.searchGame;
    _namedStreamWState
        .getDataForNamed
        .userWUsernameWEnemy = UserWUsername(userWhereGenerated.uniqueId, userWhereGenerated, searchGameWUsernameWStatsWEnemy.usernameWEnemy);
    _namedStreamWState
        .getDataForNamed
        .statsWEnemy = searchGameWUsernameWStatsWEnemy.statsWEnemy;
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _firstQQChoiceInAcceptanceModeQQIsWhereEqualsOneFromNumber() {
    final isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy = _namedStreamWState
        .getDataForNamed
        .searchGame
        .isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy();
    if(isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy) {
      // Create GameMatch
      // Navigation to GameMatchVM
      return;
    }
  }

  void _firstQQChoiceInAcceptanceModeQQIsWhereEqualsTwoFromNumber() {
    // Return to enum navigation (SearchGameVM)
  }
}