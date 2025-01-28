import 'dart:io';
import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/balance/balance.dart';
import 'package:test_lamm/model/balance_killer/balance_killer.dart';
import 'package:test_lamm/model/balance_killer/list_balance_killer.dart';
import 'package:test_lamm/model/banned_killer/list_banned_killer.dart';
import 'package:test_lamm/model/game_match/game_match.dart';
import 'package:test_lamm/model/game_match_w_username/game_match_w_username.dart';
import 'package:test_lamm/model/killer/killer.dart';
import 'package:test_lamm/model/killer_perk/killer_perk.dart';
import 'package:test_lamm/model/killer_perk/list_killer_perk.dart';
import 'package:test_lamm/model/maps/list_maps.dart';
import 'package:test_lamm/model/maps/maps.dart';
import 'package:test_lamm/model/picked_killer/list_picked_killer.dart';
import 'package:test_lamm/model/round/list_round.dart';
import 'package:test_lamm/model/search_game/search_game.dart';
import 'package:test_lamm/model/search_game_w_username_w_stats_w_enemy/search_game_w_username_w_stats_w_enemy.dart';
import 'package:test_lamm/model/season/season.dart';
import 'package:test_lamm/model/stats/stats.dart';
import 'package:test_lamm/model/survivor_perk/list_survivor_perk.dart';
import 'package:test_lamm/model/survivor_perk/survivor_perk.dart';
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
import 'package:test_lamm/named_utility/enum_routers_utility.dart';
import 'package:test_lamm/named_utility/keys_temp_cache_provider_utility.dart';
import 'package:test_lamm/named_vm/search_game_vm/data_for_search_game_vm.dart';
import 'package:test_lamm/named_vm/search_game_vm/enum_data_for_search_game_vm.dart';
import 'package:uuid/uuid.dart';

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
      case EnumDataForSearchGameVM.acceptanceWEnemy:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "AcceptanceWEnemy(We are waiting for confirmation of the match from the opponent...)");
        _acceptanceWEnemy();
        break;
      case EnumDataForSearchGameVM.searchMode:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "SearchMode(Looking for an opponent...)");
        _searchMode();
        break;
      case EnumDataForSearchGameVM.acceptanceMode:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "AcceptanceMode(${dataWNamed.getStringWhereStrMyUserParametersUserWUsernameWEnemyAndStatsWEnemy}\nExit: 0\nAccept: 1\nCancel: 2\nInput: )");
        final input = stdin.readLineSync();
        final numberWhereStrConvertedWZeroFromInput = AlgorithmsUtility.getNumberWhereStrConvertedWZeroFromInput(input);
        _acceptanceMode(numberWhereStrConvertedWZeroFromInput);
        break;
      case EnumDataForSearchGameVM.navigation:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Navigation(${dataWNamed.getStringParametersUserWUsernameAndStats}\nExit: 0\nSearchMode: 1\nBack: 2\nInput: )");
        final input = stdin.readLineSync();
        final numberWhereStrConvertedWZeroFromInput = AlgorithmsUtility.getNumberWhereStrConvertedWZeroFromInput(input);
        _navigation(numberWhereStrConvertedWZeroFromInput);
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
    /// Request
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

  void _firstQQFirstRequestQQIsWhereIsEmptyByUniqueIdFromStats(User user) {
    /// Request
    final stats = Stats("9e73b7d2-d286-11ef-9cd2-0242ac120002", user.clone(), Season("1356b4d2-d287-11ef-9cd2-0242ac120002", 1, DateTime.fromMillisecondsSinceEpoch(1736516582), DateTime.fromMillisecondsSinceEpoch(1736516582)), 0, 0, 500);
    /// Request
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

  Future<void> _acceptanceWEnemy() async {
    await Future.delayed(Duration(seconds: 5));
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    /// Request
    final boolWhereGenerated = AlgorithmsUtility.getBoolWhereGenerated();
    final searchGameFirst = SearchGame(
        searchGame.uniqueId,
        searchGame.updatedAt,
        searchGame.user.clone(),
        boolWhereGenerated
            ? searchGame.userWEnemy.clone()
            : User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),
        boolWhereGenerated,
        boolWhereGenerated,
        boolWhereGenerated);
    _namedStreamWState
        .getDataForNamed
        .searchGame = searchGameFirst;
    final isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy = _namedStreamWState
        .getDataForNamed
        .searchGame
        .isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy();
    if(isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy) {
      _firstQQAcceptanceWEnemyQQIsWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy();
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _firstQQAcceptanceWEnemyQQIsWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy() {
    final userWUsername = _namedStreamWState
        .getDataForNamed
        .userWUsername;
    final userWUsernameWEnemy = _namedStreamWState
        .getDataForNamed
        .userWUsernameWEnemy;
    final stats = _namedStreamWState
        .getDataForNamed
        .stats;
    final statsWEnemy = _namedStreamWState
        .getDataForNamed
        .statsWEnemy;
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    /// Request
    final gameMatchWUsername = GameMatchWUsername(
        GameMatch(
            Uuid().v1(),
            DateTime.now(),
            false,
            "",
            Balance(
                "d5c052fa-d34d-11ef-9cd2-0242ac120002",
                Season(
                    "1356b4d2-d287-11ef-9cd2-0242ac120002",
                    1,
                    DateTime.fromMillisecondsSinceEpoch(1736516582),
                    DateTime.fromMillisecondsSinceEpoch(1736516582)),
                3,
                ListBalanceKiller([
                  BalanceKiller(
                      "2aecb1c2-cf59-11ef-9cd2-0242ac120002",
                      Killer(
                        "36b12222-cf59-11ef-9cd2-0242ac120002",
                        "Trapper",
                        "assets/icons/dbd/killer/trapper.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      1,
                      2),
                  BalanceKiller(
                      "6d38a88e-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "77ca4f28-cf67-11ef-9cd2-0242ac120002",
                        "Huntress",
                        "assets/icons/dbd/killer/huntress.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                      ]),
                      1,
                      1),
                  BalanceKiller(
                      "81e209ce-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "85ecb7bc-cf67-11ef-9cd2-0242ac120002",
                        "Hillbilly",
                        "assets/icons/dbd/killer/hillbilly.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      1,
                      2),
                  BalanceKiller(
                      "90039b58-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "96725308-cf67-11ef-9cd2-0242ac120002",
                        "Cannibal",
                        "assets/icons/dbd/killer/cannibal.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      1,
                      1),
                  BalanceKiller(
                      "9fad722c-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "a3a50796-cf67-11ef-9cd2-0242ac120002",
                        "Doctor",
                        "assets/icons/dbd/killer/doctor.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                      ]),
                      1,
                      1),
                  BalanceKiller(
                      "b582787c-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "b8e88a06-cf67-11ef-9cd2-0242ac120002",
                        "Wraith",
                        "assets/icons/dbd/killer/wraith.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      2,
                      2),
                  BalanceKiller(
                      "c05ee992-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "c3d75bc2-cf67-11ef-9cd2-0242ac120002",
                        "Blight",
                        "assets/icons/dbd/killer/blight.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png"),
                        Maps(
                            "fd3b0b76-cf66-11ef-9cd2-0242ac120002",
                            "Mine",
                            "assets/icons/dbd/maps/mine.png"),
                        Maps(
                            "03ae4b8a-cf67-11ef-9cd2-0242ac120002",
                            "Storehouse",
                            "assets/icons/dbd/maps/storehouse.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      2,
                      2),
                ])),
            searchGame.user.clone(),
            searchGame.userWEnemy.clone(),
            ListBannedKiller(List.empty(growable: true)),
            ListPickedKiller(List.empty(growable: true)),
            ListRound(List.empty(growable: true)),
            stats.points,
            statsWEnemy.points,
            0,
            0),
        userWUsername.username,
        userWUsernameWEnemy.username);
    _tempCacheProvider.update(KeysTempCacheProviderUtility.gameMatchWUsername, gameMatchWUsername);
    _tempCacheProvider.updateWNotify(KeysTempCacheProviderUtility.enumRoutersUtility, EnumRoutersUtility.gameMatchVM);
    _dispose();
  }

  Future<void> _searchMode() async {
    await Future.delayed(Duration(seconds: 5));
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    /// Request
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

  void _acceptanceMode(int number) {
    if(number == 0) {
      return;
    }
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    final isWhereEqualsOneFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsOneFromNumber(number);
    if(isWhereEqualsOneFromNumber) {
      _firstQQAcceptanceModeQQIsWhereEqualsOneFromNumber(searchGame);
      return;
    }
    final isWhereEqualsTwoFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsTwoFromNumber(number);
    if(isWhereEqualsTwoFromNumber) {
      _firstQQAcceptanceModeQQIsWhereEqualsTwoFromNumber(searchGame);
      return;
    }
  }

  void _firstQQAcceptanceModeQQIsWhereEqualsOneFromNumber(SearchGame searchGame) {
    /// Request
    final boolWhereGenerated = AlgorithmsUtility.getBoolWhereGenerated();
    final searchGameFirst = SearchGame(
        searchGame.uniqueId,
        searchGame.updatedAt,
        searchGame.user.clone(),
        searchGame.userWEnemy.clone(),
        searchGame.isSearching,
        true,
        boolWhereGenerated);
    _namedStreamWState
        .getDataForNamed
        .searchGame = searchGameFirst;
    final isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy = _namedStreamWState
        .getDataForNamed
        .searchGame
        .isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy();
    if(isWhereTrueParametersIsAcceptedAndIsAcceptedWEnemy) {
      _firstBranchOneQQAcceptanceModeQQIsWhereEqualsOneFromNumber();
      return;
    }
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _firstQQAcceptanceModeQQIsWhereEqualsTwoFromNumber(SearchGame searchGame) {
    /// Request
    final searchGameFirst = SearchGame(searchGame.uniqueId, searchGame.updatedAt, searchGame.user.clone(), User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""), false, false, false);
    _namedStreamWState
        .getDataForNamed
        .searchGame = searchGameFirst;
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _firstBranchOneQQAcceptanceModeQQIsWhereEqualsOneFromNumber() {
    final userWUsername = _namedStreamWState
        .getDataForNamed
        .userWUsername;
    final userWUsernameWEnemy = _namedStreamWState
        .getDataForNamed
        .userWUsernameWEnemy;
    final stats = _namedStreamWState
        .getDataForNamed
        .stats;
    final statsWEnemy = _namedStreamWState
        .getDataForNamed
        .statsWEnemy;
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    /// Request
    final gameMatchWUsername = GameMatchWUsername(
        GameMatch(
            Uuid().v1(),
            DateTime.now(),
            false,
            "",
            Balance(
                "d5c052fa-d34d-11ef-9cd2-0242ac120002",
                Season(
                    "1356b4d2-d287-11ef-9cd2-0242ac120002",
                    1,
                    DateTime.fromMillisecondsSinceEpoch(1736516582),
                    DateTime.fromMillisecondsSinceEpoch(1736516582)),
                3,
                ListBalanceKiller([
                  BalanceKiller(
                      "2aecb1c2-cf59-11ef-9cd2-0242ac120002",
                      Killer(
                        "36b12222-cf59-11ef-9cd2-0242ac120002",
                        "Trapper",
                        "assets/icons/dbd/killer/trapper.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      1,
                      2),
                  BalanceKiller(
                      "6d38a88e-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "77ca4f28-cf67-11ef-9cd2-0242ac120002",
                        "Huntress",
                        "assets/icons/dbd/killer/huntress.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                      ]),
                      1,
                      1),
                  BalanceKiller(
                      "81e209ce-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "85ecb7bc-cf67-11ef-9cd2-0242ac120002",
                        "Hillbilly",
                        "assets/icons/dbd/killer/hillbilly.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      1,
                      2),
                  BalanceKiller(
                      "90039b58-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "96725308-cf67-11ef-9cd2-0242ac120002",
                        "Cannibal",
                        "assets/icons/dbd/killer/cannibal.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      1,
                      1),
                  BalanceKiller(
                      "9fad722c-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "a3a50796-cf67-11ef-9cd2-0242ac120002",
                        "Doctor",
                        "assets/icons/dbd/killer/doctor.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                      ]),
                      1,
                      1),
                  BalanceKiller(
                      "b582787c-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "b8e88a06-cf67-11ef-9cd2-0242ac120002",
                        "Wraith",
                        "assets/icons/dbd/killer/wraith.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "a666fe00-cf5b-11ef-9cd2-0242ac120002",
                            "Lithe",
                            "assets/icons/dbd/survivor_perk/lithe.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      2,
                      2),
                  BalanceKiller(
                      "c05ee992-cf67-11ef-9cd2-0242ac120002",
                      Killer(
                        "c3d75bc2-cf67-11ef-9cd2-0242ac120002",
                        "Blight",
                        "assets/icons/dbd/killer/blight.png",),
                      ListMaps([
                        Maps(
                            "8c3ece2e-cf59-11ef-9cd2-0242ac120002",
                            "Chapel",
                            "assets/icons/dbd/maps/chapel.png"),
                        Maps(
                            "15fcf928-cf5b-11ef-9cd2-0242ac120002",
                            "Coal Tower",
                            "assets/icons/dbd/maps/coal_tower.png"),
                        Maps(
                            "1f3d74fe-cf5b-11ef-9cd2-0242ac120002",
                            "Gas Station",
                            "assets/icons/dbd/maps/gas_station.png"),
                        Maps(
                            "fd3b0b76-cf66-11ef-9cd2-0242ac120002",
                            "Mine",
                            "assets/icons/dbd/maps/mine.png"),
                        Maps(
                            "03ae4b8a-cf67-11ef-9cd2-0242ac120002",
                            "Storehouse",
                            "assets/icons/dbd/maps/storehouse.png")
                      ]),
                      ListKillerPerk([
                        KillerPerk(
                            "dd649f90-cf59-11ef-9cd2-0242ac120002",
                            "Bamboozle",
                            "assets/icons/dbd/killer_perk/bamboozle.png"),
                        KillerPerk(
                            "61e1303e-cf5b-11ef-9cd2-0242ac120002",
                            "Brutal Strength",
                            "assets/icons/dbd/killer_perk/brutal_strength.png"),
                      ]),
                      ListSurvivorPerk([
                        SurvivorPerk(
                            "a1da1d2c-cf5b-11ef-9cd2-0242ac120002",
                            "Balanced Landing",
                            "assets/icons/dbd/survivor_perk/balanced_landing.png"),
                        SurvivorPerk(
                            "ab877540-cf5b-11ef-9cd2-0242ac120002",
                            "Sprint Burst",
                            "assets/icons/dbd/survivor_perk/sprint_burst.png"),
                      ]),
                      2,
                      2),
                ])),
            searchGame.userWEnemy.clone(),
            searchGame.user.clone(),
            ListBannedKiller(List.empty(growable: true)),
            ListPickedKiller(List.empty(growable: true)),
            ListRound(List.empty(growable: true)),
            statsWEnemy.points,
            stats.points,
            0,
            0),
        userWUsernameWEnemy.username,
        userWUsername.username);
    _tempCacheProvider.update(KeysTempCacheProviderUtility.gameMatchWUsername, gameMatchWUsername);
    _tempCacheProvider.updateWNotify(KeysTempCacheProviderUtility.enumRoutersUtility, EnumRoutersUtility.gameMatchVM);
    _dispose();
  }

  void _navigation(int number) {
    if(number == 0) {
      return;
    }
    final isWhereEqualsOneFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsOneFromNumber(number);
    if(isWhereEqualsOneFromNumber) {
      _firstQQNavigationQQIsWhereEqualsOneFromNumber();
      return;
    }
    final isWhereEqualsTwoFromNumber = _namedStreamWState
        .getDataForNamed
        .isWhereEqualsTwoFromNumber(number);
    if(isWhereEqualsTwoFromNumber) {
      _firstQQNavigationQQIsWhereEqualsTwoFromNumber();
      return;
    }
  }

  void _firstQQNavigationQQIsWhereEqualsOneFromNumber() {
    final searchGame = _namedStreamWState
        .getDataForNamed
        .searchGame;
    /// Request
    final searchGameFirst = SearchGame(searchGame.uniqueId, searchGame.updatedAt, searchGame.user.clone(), User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""), true, false, false);
    _namedStreamWState
        .getDataForNamed
        .searchGame = searchGameFirst;
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _firstQQNavigationQQIsWhereEqualsTwoFromNumber() {
    _tempCacheProvider.updateWNotify(KeysTempCacheProviderUtility.enumRoutersUtility, EnumRoutersUtility.mainVM);
    _dispose();
  }
}