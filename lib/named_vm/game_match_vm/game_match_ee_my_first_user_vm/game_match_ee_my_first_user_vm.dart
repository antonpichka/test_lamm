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
      case EnumDataForGameMatchEEMyFirstUserVM.first:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "First");
        break;
    }
  }

  Future<void> _firstRequest() async {
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
  }
}