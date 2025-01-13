import 'package:library_architecture_mvvm_modify/library_architecture_mvvm_modify.dart' as lamm;
import 'package:test_lamm/model/token/token.dart';
import 'package:test_lamm/named_utility/algorithms_utility.dart';
import 'package:test_lamm/named_utility/enum_routers_utility.dart';
import 'package:test_lamm/named_utility/keys_temp_cache_provider_utility.dart';
import 'package:test_lamm/named_vm/login_vm/login_vm.dart';
import 'package:test_lamm/named_vm/main_vm/main_vm.dart';
import 'package:test_lamm/named_vm/routers_vm/data_for_routers_vm.dart';
import 'package:test_lamm/named_vm/routers_vm/enum_data_for_routers_vm.dart';

final class RoutersVM {
  // ModelWrapperRepository
  // NamedUtility

  // TempCacheProvider
  final _tempCacheProvider = lamm.TempCacheProvider();

  // NamedStreamWState
  late final lamm.BaseNamedStreamWState<DataForRoutersVM> _namedStreamWState;

  RoutersVM(Token token) {
    _namedStreamWState = lamm.DefaultStreamWState(DataForRoutersVM(true, token, EnumRoutersUtility.mainVM));
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
      case EnumDataForRoutersVM.searchGame:
        // TODO: Handle this case.
        throw UnimplementedError();
      case EnumDataForRoutersVM.mainVM:
        MainVM();
        break;
    }
  }

  Future<void> _firstRequest() async {
    _namedStreamWState
        .getDataForNamed
        .isLoading = false;
  }

  void _callbackYYListenToken(Token event) {
    _namedStreamWState
        .getDataForNamed
        .token = event;
    _namedStreamWState.notifyStreamDataForNamed();
  }

  void _callbackYYListenEnumRoutersUtility(EnumRoutersUtility event) {
    _namedStreamWState
        .getDataForNamed
        .enumRoutersUtility = event;
    _namedStreamWState.notifyStreamDataForNamed();
  }
}