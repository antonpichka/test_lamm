import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/model/user/user.dart';
import 'package:test_lamm/model/user_w_username/user_w_username.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
import 'package:test_lamm/named_utility/enum_routers_utility.dart';
import 'package:test_lamm/named_utility/keys_temp_cache_provider_utility.dart';
import 'package:test_lamm/named_vm/login_vm/login_vm.dart';
import 'package:test_lamm/named_vm/main_vm/main_vm.dart';
import 'package:test_lamm/named_vm/routers_vm/data_for_routers_vm.dart';
import 'package:test_lamm/named_vm/routers_vm/enum_data_for_routers_vm.dart';
import 'package:test_lamm/named_vm/search_game_vm/search_game_vm.dart';

final class RoutersVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForRoutersVM> _namedStreamWState;

  RoutersVM(Token token) {
    _namedStreamWState = lamm.DefaultStreamWState(DataForRoutersVM(true, token, EnumRoutersUtility.mainVM, UserWUsername("",User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),"")));
    _init();
  }

  Future<void> _init() async {
    _namedStreamWState.listenStreamDataForNamedFromCallback((event) {
      _build();
    });
    _tempCacheProvider.listenNamed(KeysTempCacheProviderUtility.token, (event) {
      _callbackYYListenToken(event as Token);
    });
    _tempCacheProvider.listenNamed(KeysTempCacheProviderUtility.enumRoutersUtility, (event) {
      _callbackYYListenEnumRoutersUtility(event as EnumRoutersUtility);
    });
    await _firstRequest();
    _namedStreamWState.notifyStreamDataForNamed();
  }

  // ignore: unused_element
  void _dispose() {
    _tempCacheProvider.dispose([KeysTempCacheProviderUtility.token, KeysTempCacheProviderUtility.enumRoutersUtility]);
    _namedStreamWState.dispose();
  }

  void _build() {
    final dataWNamed = _namedStreamWState.getDataForNamed;
    switch (dataWNamed.getEnumDataForNamed) {
      case EnumDataForRoutersVM.isLoading:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "IsLoading");
        break;
      case EnumDataForRoutersVM.exception:
        AlgorithmsUtility.debugPrintWhereConsoleFromThisClassAndText(this, "Exception(${dataWNamed.exceptionController.getKeyParameterException})");
        break;
      case EnumDataForRoutersVM.loginVM:
        LoginVM();
        break;
      case EnumDataForRoutersVM.searchGameVM:
        SearchGameVM(dataWNamed.token,dataWNamed.userWUsername);
        break;
      case EnumDataForRoutersVM.gameMatchVM:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForRoutersVM.mainVM:
        MainVM(dataWNamed.token,dataWNamed.userWUsername);
        break;
    }
  }

  Future<void> _firstRequest() async {
    final isWhereIsNotEmptyByUniqueIdParameterToken = _namedStreamWState
        .getDataForNamed
        .isWhereIsNotEmptyByUniqueIdParameterToken();
    if(isWhereIsNotEmptyByUniqueIdParameterToken) {
      _firstQQFirstRequestQQIsWhereIsNotEmptyByUniqueIdParameterToken();
      return;
    }
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
  }

  void _firstQQFirstRequestQQIsWhereIsNotEmptyByUniqueIdParameterToken() {
    final userWUsername = UserWUsername(
        "65a63bd2-d1cd-11ef-9cd2-0242ac120002",
        User(
            "65a63bd2-d1cd-11ef-9cd2-0242ac120002",
            DateTime.fromMillisecondsSinceEpoch(1736516582),
            "Discord"),
        "Top1");
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
    _namedStreamWState
        .getDataForNamed
        .userWUsername = userWUsername;
  }

  void _callbackYYListenToken(Token event) {
    _namedStreamWState
        .getDataForNamed
        .token = event;
    final isWhereIsNotEmptyByUniqueIdParameterToken = _namedStreamWState
        .getDataForNamed
        .isWhereIsNotEmptyByUniqueIdParameterToken();
    if(isWhereIsNotEmptyByUniqueIdParameterToken) {
      _firstQQCallbackYYListenTokenQQIsWhereIsNotEmptyByUniqueIdParameterToken();
      return;
    }
    _namedStreamWState
        .getDataForNamed
        .userWUsername = UserWUsername("",User("",DateTime.fromMillisecondsSinceEpoch(1736516582),""),"");
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _callbackYYListenEnumRoutersUtility(EnumRoutersUtility event) {
    _namedStreamWState
        .getDataForNamed
        .enumRoutersUtility = event;
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _firstQQCallbackYYListenTokenQQIsWhereIsNotEmptyByUniqueIdParameterToken() {
    final userWUsername = UserWUsername(
        "65a63bd2-d1cd-11ef-9cd2-0242ac120002",
        User(
            "65a63bd2-d1cd-11ef-9cd2-0242ac120002",
            DateTime.fromMillisecondsSinceEpoch(1736516582),
            "Discord"),
        "Top1");
    _namedStreamWState
        .getDataForNamed
        .userWUsername = userWUsername;
    _namedStreamWState.notifyStreamDataForNamed();
  }
}